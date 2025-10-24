{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./amd-config.nix
    ./hardware-configuration.nix
    ./local.nix
    ../../nixos/core
    ../../nixos/gaming
    ../../nixos/server
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}