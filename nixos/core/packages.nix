{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    bitwarden-desktop # Secure and free password manager for all of your devices
    brave # Privacy-oriented browser for Desktop and Laptop computers
    discord # All-in-one cross-platform voice and text chat for gamers
    firefox # Web browser
    kdePackages.kcalc # Scientific calculator
    librewolf # Fork of Firefox, focused on privacy, security and freedom
    obsidian # Powerful knowledge base that works on top of a local folder of plain text Markdown files
    ranger # File manager with minimalistic curses interface
    rofi # Window switcher, run dialog and dmenu replacement
    swww # Effecient animated wallpaper daemon for wayland, controlled at runtime
    thunderbird # full-featured e-mail client
    unzip # Extraction utility for archives compressed in .zip format
    vlc # Cross-platform media player and streaming server
    waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors
    wofi # Launcher/menu program for wlroots based wayland compositors such as sway
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
