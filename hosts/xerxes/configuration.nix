{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./amd-config.nix
    ./hardware-configuration.nix
    ./jellyfin.nix
    ./testPackages.nix
    ../../nixos/modules
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
