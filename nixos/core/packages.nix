{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    bitwarden-desktop # Secure and free password manager for all of your devices
    brave # Privacy-oriented browser for Desktop and Laptop computers
    brightnessctl # This program allows you to read and control device brightness
    discord # All-in-one cross-platform voice and text chat for gamers
    firefox # Web browser
    kdePackages.kcalc # Scientific calculator
    kdePackages.xdg-desktop-portal-kde # xdg-desktop-portal backend for kde
    kdePackages.xwaylandvideobridge # Utility to allow streaming Wayland windows to x applications
    librewolf # Fork of Firefox, focused on privacy, security and freedom
    light # GNU/Linux application to control backlights
    mediainfo # Supplies technical and tag information about a video or audio file
    obsidian # Powerful knowledge base that works on top of a local folder of plain text Markdown files
    pavucontrol # PulseAudio Volume Control
    playerctl # Command-line utility and library for controlling media players that implement
    ranger # File manager with minimalistic curses interface
    thunderbird # full-featured e-mail client
    unzip # Extraction utility for archives compressed in .zip format
    vlc # Cross-platform media player and streaming server
    xdg-desktop-portal-gtk # Desktop integration portals for sandboxed apps
    xdg-desktop-portal-hyprland # xdg-desktop-portal backend for Hyprland
    youtube-music # Electron wrapper around YouTube Music
    zram-generator # Systemd unit generator for zram devices

  ];

  programs = {
    appimage = {
      enable = true;
      binfmt = true;
    };
  };

}
