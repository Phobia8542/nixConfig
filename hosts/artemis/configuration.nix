{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./nvidia-config.nix
    ./local.nix
    ../../nixos/core
    ../../nixos/content
    ../../nixos/gaming
    ../../nixos/nvidia
    ../../nixos/ollama/cuda.nix
    ../../nixos/pentest
    ../../nixos/powerUser
    ../../nixos/tucked
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
