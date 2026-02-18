{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./amd-config.nix
    ./hardware-configuration.nix
    ./local.nix
    ./nuphy.nix
    ../../nixos/core
    ../../nixos/content
    ../../nixos/gaming
    ../../nixos/ollama/rocm.nix
    ../../nixos/pentest
    ../../nixos/powerUser
    ../../nixos/server
    ../../nixos/tucked
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}
