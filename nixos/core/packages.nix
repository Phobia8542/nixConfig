{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    bitwarden-desktop # Secure and free password manager for all of your devices
    brave # Privacy-oriented browser for Desktop and Laptop computers
    brightnessctl # This program allows you to read and control device brightness
    discord # All-in-one cross-platform voice and text chat for gamers
    firefox # Web browser
    kdePackages.kcalc # Scientific calculator
    librewolf # Fork of Firefox, focused on privacy, security and freedom
    light # GNU/Linux application to control backlights
    mediainfo # Supplies technical and tag information about a video or audio file
    obsidian # Powerful knowledge base that works on top of a local folder of plain text Markdown files
    pavucontrol # PulseAudio Volume Control
    playerctl # Command-line utility and library for controlling media players that implement
    ranger # File manager with minimalistic curses interface
    swww # Effecient animated wallpaper daemon for wayland, controlled at runtime
    thunderbird # full-featured e-mail client
    unzip # Extraction utility for archives compressed in .zip format
    vlc # Cross-platform media player and streaming server
    # waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors
    # wofi # Launcher/menu program for wlroots based wayland compositors such as sway
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
