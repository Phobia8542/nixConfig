{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./amd-config.nix
    ./hardware-configuration.nix
    ./local.nix
    ./nuphy.nix
    ../../nixos/core
    ../../nixos/gaming
    ../../nixos/pentest
    ../../nixos/powerUser
    ../../nixos/server
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
