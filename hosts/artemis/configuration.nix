{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./nvidia-config.nix
    ./testPackages.nix
    ../../nixos/core
    ../../nixos/gaming
    ../../nixos/pentest
    ../../nixos/powerUser
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
