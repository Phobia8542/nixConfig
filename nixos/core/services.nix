{
  services = {
    blueman.enable = true; # Enable bluetooth
    cron.enable = true; # Set jobs with "systemCronJobs [];"
    openssh.enable = true; # enable OpenSSH daemon
    printing.enable = true; # Enable CUPS to print documents
    lact.enable = true; # Enable LACT (overclocking tool)

    # Xserver (X11) & video driver settings
    desktopManager.plasma6.enable = true; # Enable plasma KDE
    displayManager.sddm.enable = true; # Enable ssdm
    xserver = {
      enable = true; # Enable X11 windowing system
      xkb.variant = ""; # Set keymap variant
      xkb.layout = "us"; # Set keyboard layout
    };

    # Audio settings (pipewire with alsa support)
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };

    # Scan system automatically
    clamav.scanner = {
      enable = true;
      interval = "Sun *-*-* 04:00:00";
    };
  };
}
