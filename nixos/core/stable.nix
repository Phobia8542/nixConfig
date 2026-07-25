{ config, pkgs, inputs, ... }:
let
  # Create a package set based on the stable input and allow unfree packages
  stable-pkgs = import inputs.nixos-stable {
    system = pkgs.stdenv.hostPlatform.system;
    config = { allowUnfree = true; };
  };
in
{
  environment.systemPackages = with stable-pkgs; [

    # bitwarden-desktop # Secure and free password manager for all of your devices
    discord # All-in-one cross-platform voice and text chat for gamers
    proton-authenticator # Two-factor authentication manager with optional sync

  ];
}
