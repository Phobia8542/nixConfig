{
  boot.initrd.kernelModules = [ "amdgpu" ]; # Load amd kernel drivers
  services.xserver.videoDrivers = ["amdgpu"]; # Enables GPU Drivers
  hardware.amdgpu.overdrive.enable = true; # Enable Overdrive (LACT)
}
