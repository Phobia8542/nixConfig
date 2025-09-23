{ pkgs, user, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.nushell;
    users.${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "docker" "gamemode" ];
    };
  };
  # environment.shells = [ pkgs.nushell ]; # make nushell default shell

  # Allow for unfree packages
    nixpkgs.config = {
      allowUnfree = true;
      packageOverrides = with pkgs; {
        unstable = import <nixos-unstable> {};
      };
    };

  # services.getty.autologinUser = user;
}
