{ config, ... }:
{
  boot.initrd.kernelModules = [ "nvidia" ]; # Load amd kernel drivers
  services.xserver.videoDrivers = [ "nvidia" ]; # Enables GPU Drivers
  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.latest; # Set chosen drivers 
    nvidiaSettings = true; # Enable Nvidia settings
    modesetting.enable = true; # Required
    open = true; # Used for unstable
  };
}

