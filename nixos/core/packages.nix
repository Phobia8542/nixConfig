{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    # bitwarden-desktop # Secure and free password manager for all of your devices
    # bluez # Official Linux Bluetooth protocol stack
    # bluez-tools # Set of tools to manage bluetooth devices for linux (For CLi use)
    fast # Internet speed test in your terminal
    firefox # Web browser
    flatpak # Linux application sandboxing and distribution framework
    kdePackages.drkonqi # Crash handler for KDE software
    kdePackages.kcalc # Scientific calculator
    kdePackages.xdg-desktop-portal-kde # xdg-desktop-portal backend for kde
    killall
    nushell # Modern shell written in Rust
    nvtopPackages.full # (h)top like task monitor for AMD, Adreno, Intel and NVIDIA GPUs
    obsidian # Powerful knowledge base that works on top of a local folder of plain text Markdown files
    openvpn # Robust and highly flexible tunneling application
    pear-desktop # Electron wrapper around YouTube Music
    speedtest-rs # Command line internet speedtest tool written in rust
    thunderbird # full-featured e-mail client
    vlc # Cross-platform media player and streaming server
    wget # Tool for retrieving files using HTTP, HTTPS, and FTP
    piper # Neural text-to-speech engine
    wl-clipboard # Command-line copy/paste utilities for Wayland
    xdg-desktop-portal-gtk # Desktop integration portals for sandboxed apps
    xdg-desktop-portal-hyprland # xdg-desktop-portal backend for Hyprland (Enables screen sharing)
    xwayland # X server for interfacing X1 apps with Wayland protocol
    zram-generator # Systemd unit generator for zram devices

  ];

  programs = {
    appimage = {
      enable = true;
      binfmt = true;
    };
  };

}
