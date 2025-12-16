{ pkgs, ... }:
{
  boot = {
    loader = {
      grub = {
        efiSupport = true;
        enable = false;
        device = "nodev";
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot"; # Set Efi mount point
      };
      systemd-boot.enable = true; # Enable systemd bootloader
    };
    kernelPackages = pkgs.linuxPackages_latest; # Set kernel 
  };
  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
    graphics = {
      enable = true; # replaces opengl
      enable32Bit = true; # Enable 32Bit support
    };
  };
}
