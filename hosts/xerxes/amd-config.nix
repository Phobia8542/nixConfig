{
  boot.initrd.kernelModules = [ "amdgpu" ]; # Load amd kernel drivers
  services.xserver.videoDrivers = ["amdgpu"]; # Enables GPU Drivers
}
