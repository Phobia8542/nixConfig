{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    bitwarden-desktop # Secure and free password manager for all of your devices
    bluez # Official Linux Bluetooth protocol stack
    bluez-tools # Set of tools to manage bluetooth devices for linux
    kdePackages.drkonqi # Crash handler for KDE software
    kdePackages.kcalc # Scientific calculator
    kdePackages.xdg-desktop-portal-kde # xdg-desktop-portal backend for kde
    # kdePackages.xwaylandvideobridge # Utility to allow streaming Wayland windows to x applications
    killall
    nvtopPackages.full # (h)top like task monitor for AMD, Adreno, Intel and NVIDIA GPUs
    openvpn # Robust and highly flexible tunneling application
    pear-desktop # Electron wrapper around YouTube Music
    speedtest-rs # Command line internet speedtest tool written in rust
    thunderbird # full-featured e-mail client
    vlc # Cross-platform media player and streaming server
    wget # Tool for retrieving files using HTTP, HTTPS, and FTP
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
