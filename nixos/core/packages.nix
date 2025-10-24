{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    bitwarden-desktop # Secure and free password manager for all of your devices
    bluez # Official Linux Bluetooth protocol stack
    bluez-tools # Set of tools to manage bluetooth devices for linux
    brave # Privacy-oriented browser for Desktop and Laptop computers
    brightnessctl # This program allows you to read and control device brightness
    deluge # Torrent client
    discord # All-in-one cross-platform voice and text chat for gamers
    fastfetch # Feature-rich & performance oriented neofetch (information tool)
    firefox # Web browser
    gparted # Graphical disk partitioning tool
    kdePackages.filelight # Quickly visualize your disk space usage
    kdePackages.kcalc # Scientific calculator
    kdePackages.xdg-desktop-portal-kde # xdg-desktop-portal backend for kde
    # kdePackages.xwaylandvideobridge # Utility to allow streaming Wayland windows to x applications
    killall
    libreoffice # Comprehensive, professional-quality productivity suite 
    librewolf # Fork of Firefox, focused on privacy, security and freedom
    light # GNU/Linux application to control backlights
    mediainfo # Supplies technical and tag information about a video or audio file
    mpv # General-purpose media player
    networkmanager-openvpn # NetworkManager's OpenVPN plugin
    nvtopPackages.full # (h)top like task monitor for AMD, Adreno, Intel and NVIDIA GPUs
    obsidian # Powerful knowledge base that works on top of a local folder of plain text Markdown files
    openvpn # Robust and highly flexible tunneling application
    pavucontrol # PulseAudio Volume Control
    playerctl # Command-line utility and library for controlling media players that implement
    ranger # File manager with minimalistic curses interface
    thunderbird # full-featured e-mail client
    unzip # Extraction utility for archives compressed in .zip format
    vlc # Cross-platform media player and streaming server
    vscodium # Open source sode editor developed by Microsoft
    xdg-desktop-portal-gtk # Desktop integration portals for sandboxed apps
    xdg-desktop-portal-hyprland # xdg-desktop-portal backend for Hyprland
    # xwayland # X server for interfacing X1 apps with Wayland protocol
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
