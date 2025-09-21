{ config, ... }:
{
  boot.initrd.kernelModules = [ "nvidia" ]; # Load amd kernel drivers
  services.xserver.videoDrivers = [ "nvidia" "modesetting" ]; # Enables GPU Drivers
  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.stable; # Stable drivers
    nvidiaSettings = true; # Enable Nvidia settings
    modesetting.enable = true; # Required
    open = true; # Used for unstable
    powerManagement = {
      enable = true;
      finegrained = true;
    };
    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };
      nvidiaBusId = "PCI:1:0:0";
      amdgpuBusId = "PCI:5:0:0";
    };
  };
}

