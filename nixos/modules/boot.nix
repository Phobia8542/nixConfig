{ ... }:
{
  boot = {
    loader = {
      grub = {
        efiSupport = true;
        enable = false;
        device = "nodev";
        # useOSProber = true;
      };
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot"; # Set Efi mount point
      };
      systemd-boot.enable = true; # Enable systemd bootloader
    };
    # initrd.kernelModules = [ "amdgpu" ]; # Load amd kernel drivers
    # initrd.kernelModules = [ "nvidia" ]; # Load amd kernel drivers
  };
}
