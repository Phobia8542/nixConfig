{
  boot.initrd.kernelModules = [ "nvidia" ]; # Load amd kernel drivers
  services.xserver.videoDrivers = ["nvidia"]; # Enables GPU Drivers
}
