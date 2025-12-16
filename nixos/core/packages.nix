{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    alacritty # Cross-platform, GPU-accelerated terminal emulator 
    bitwarden-desktop # Secure and free password manager for all of your devices
    bluez # Official Linux Bluetooth protocol stack
    bluez-tools # Set of tools to manage bluetooth devices for linux
    brave # Privacy-oriented browser for Desktop and Laptop computers
    brightnessctl # This program allows you to read and control device brightness
    cliphist # Wayland clipboard manager
    firefox # Web browser
    fzf # Command-line fuzzy finder written for fzf
    htop # Interactive process viewer
    kdePackages.kcalc # Scientific calculator
    kdePackages.xdg-desktop-portal-kde # xdg-desktop-portal backend for kde
    # kdePackages.xwaylandvideobridge # Utility to allow streaming Wayland windows to x applications
    killall
    kitty # Fast, feature-rich, GPU based terminal emulator
    legcord # Lightweight, alternative desktop client for Discord
    libnotify # Library that sends desktop notifications to a notification daemon
    libreoffice # Comprehensive, professional-quality productivity suite 
    librewolf # Fork of Firefox, focused on privacy, security and freedom
    light # GNU/Linux application to control backlights
    mediainfo # Supplies technical and tag information about a video or audio file
    mpv # General-purpose media player
    # nvtopPackages.full # (h)top like task monitor for AMD, Adreno, Intel and NVIDIA GPUs
    obsidian # Powerful knowledge base that works on top of a local folder of plain text Markdown files
    openvpn # Robust and highly flexible tunneling application
    pavucontrol # PulseAudio Volume Control
    playerctl # Command-line utility and library for controlling media players that implement
    speedtest-rs # Command line internet speedtest tool written in rust
    thunderbird # full-featured e-mail client
    vencord # Cutest Discord client mod (Allows for customization of discord clients)
    vlc # Cross-platform media player and streaming server
    vscodium # Open source code editor developed by Microsoft
    wget # Tool for retrieving files using HTTP, HTTPS, and FTP
    wl-clipboard # Command-line copy/paste utilities for Wayland
    xdg-desktop-portal-gtk # Desktop integration portals for sandboxed apps
    xdg-desktop-portal-hyprland # xdg-desktop-portal backend for Hyprland (Enables screen sharing)
    xwayland # X server for interfacing X1 apps with Wayland protocol
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
