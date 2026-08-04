{
  description = "Mult-host flake";

  inputs = {

    # Unstable packages
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    # Stable packages
    nixos-stable.url = "github:nixos/nixpkgs?ref=nixos-26.05";

    # Home manager, Nix-based user environment configurator
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprland, the modern compositor for wayland
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprpaper, wallpaper manager for hyprland
    hyprpaper.url = "github:hyprwm/hyprpaper";

    # waybar, a customizable wayland bar
    waybar.url = "github:Alexays/Waybar";
    waybar.inputs.nixpkgs.follows = "nixpkgs";

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Efficient animated wallpaper daemon for wayland
    # awww.url = "git+https://codeberg.org/LGFae/awww";

    # Sops, Simple and flexible tool for managing secrets
    sops.url = "github:Mic92/sops-nix";

    # Hermes Agent, Open-source AI agent with Persistent Memory
    hermes-agent.url = "github:NousResearch/hermes-agent";

  };

  outputs = { self, nixpkgs, nixos-stable, home-manager, hyprland, hyprpaper, waybar, stylix, sops, hermes-agent, ... }@inputs: let
    system = "x86_64-linux";
    homeStateVersion = "24.11";
    user = "phobes";
    hosts = [
      { hostname = "artemis"; stateVersion = "25.05"; }
      { hostname = "inari"; stateVersion = "24.05"; }
      { hostname = "nomad"; stateVersion = "24.11"; }
      { hostname = "xerxes"; stateVersion = "24.05"; }
      { hostname = "circe"; stateVersion = "24.05"; }
    ];

    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname user self;
      };

      modules = [
        ./hosts/${hostname}/configuration.nix
        ./nixos/core/stable.nix
        sops.nixosModules.sops
        hermes-agent.nixosModules.default
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
