{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./laptop-nvidia-config.nix
    ./local.nix
    ../../nixos/core
    ../../nixos/gaming
    ../../nixos/pentest
    ../../nixos/powerUser
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
