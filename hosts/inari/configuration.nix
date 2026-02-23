{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./laptop-nvidia-config.nix
    ./local.nix
    ../../nixos/content
    ../../nixos/core
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
