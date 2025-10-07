{
  description = "My system configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprland, the modern compositor for wayland
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprland plugins
    # hyprland-plugins = {
      # url = "github:hyprwm/hyprland-plugins";
      # inputs.hyprland.follows = "hyprland";
    # };

    # Hyprspacem workspace overview plugin
    # hyprspace.url = "github:KZDKM/Hyprspace";
    # hyprspace.inputs.hyprland.follows = "hyprland";

    # Hyprpaper, wallpaper manager for hyprland
    hyprpaper.url = "github:hyprwm/hyprpaper";

    # waybar, a customizable wayland bar
    waybar.url = "github:Alexays/Waybar";
    waybar.inputs.nixpkgs.follows = "nixpkgs";

    # ghostty, Cross-platform terminal emulator
    ghostty.url = "github:/ghostty-org/ghostty";
 
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, hyprland, hyprpaper, waybar, stylix, ghostty, ... }@inputs: let
    system = "x86_64-linux";
    homeStateVersion = "24.11";
    user = "phobes";
    hosts = [
      { hostname = "artemis"; stateVersion = "24.05"; }
      { hostname = "inari"; stateVersion = "24.05"; }
      { hostname = "nomad"; stateVersion = "24.11"; }
      { hostname = "xerxes"; stateVersion = "24.05"; }
    ];

    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname user;
      };

      modules = [
        ./hosts/${hostname}/configuration.nix
      ];
    };

  in {
    nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${host.hostname}" = makeSystem {
          inherit (host) hostname stateVersion;
        };
      }) {} hosts;

    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {
        inherit inputs homeStateVersion user;
      };

      modules = [
        ./home-manager/home.nix
      ];
    };
  };
}
