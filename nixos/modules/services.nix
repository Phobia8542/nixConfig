{
  services = {
    cron.enable = true; # Set jobs with "systemCronJobs [];"
    desktopManager.plasma6.enable = true; # Enable plasma KDE
    displayManager.sddm.enable = true; # Enable ssdm
    openssh.enable = true; # enable OpenSSH daemon
    printing.enable = true; # Enable CUPS to print documents

    # Xserver (X11) & video driver settings
    xserver = {
      enable = true; # Enable X11 windowing system
      xkb.variant = ""; # Set keymap variant
      xkb.layout = "us"; # Set keyboard layout
      # videoDrivers = ["amdgpu"]; # Enables GPU Drivers
      # videoDrivers = ["nvidia"]; # Enables GPU Drivers
    };

    # Scan system automatically
    clamav.scanner = {
      enable = true;
      interval = "Sun *-*-* 04:00:00";
    };
  };

  hardware = {
    graphics = {
      enable = true; # replaces opengl
      enable32Bit = true; # Enable 32Bit support
    };
  };

}
