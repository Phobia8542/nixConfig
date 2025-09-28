{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    librewolf # Fork of Firefox, focused on privacy, security and freedom
    # obs-studio # Free and open source software for video recording and live streaming
    obsidian # Power knowledge base that works on top of a local folder of plain text Markdown files

    # CLI utils
    btop
    carapace # Multi-shell multi-command argument completer
    ffmpeg # Complete, cross-platform solution to record, convert and stream audio and video
    ffmpegthumbnailer # Lightweight video thumbnailer
    fzf # Command-line fuzzy finder written for fzf
    gh # GitHub CLI tool
    ghostty # Fast, Native, feature-rich terminal emulator pushing modern features
    htop # Interactive process viewer
    hyprpicker # Blazing fast wayland wallpaper utility
    kitty # Fast, feature-rich, GPU based terminal emulator
    nushell # Modern shell written in Rust
    starship # Minimal, blazing fast, and extremely customizable prompt for any shell
    unzip # Extraction utility for archives compressed in .zip format
    wget # Tool for retrieving files using HTTP, HTTPS, and FTP
    zip # Compressor/archiver for creating and modifying zipfiles
    zoxide # Fast cd command that learns your habits

    # Coding stuff
    openjdk # Open-source Java Development Kit
    nodejs # Event-driven I/O framework for the V8 Javascript engine

    # WM stuff
    kdePackages.xwaylandvideobridge # Utility to allow streaming Wayland windows to x applications
    libnotify # Library that sends desktop notifications to a notification daemon
    xdg-desktop-portal-gtk # Desktop integration portals for sandboxed apps
    xdg-desktop-portal-hyprland # xdg-desktop-portal backend for Hyprland
    
    # Test packages
    # neovim # Vim text editor fork focused on extensibility and agility 
    mako # Lightweight Wayland notification daemon
    mediainfo # Supplies technical and tag information about a video or audio file
    playerctl # Command-line utility and library for controlling media players that implement
    showmethekey # Show keys you typed on screen
    brightnessctl # This program allows you to read and control device brightness
    light # GNU/Linux application to control backlights
    mako # Lightweight Wayland notification daemon
    feh # Lightweight image viewer
    dmenu # Generic, highly customizable, and efficient menu for the X Window
    screenkey # Screencast tool to display your keys inspired by Screenflick
    gromit-mpx # Desktop annotation tool
    wl-clipboard # Command-line copy/paste utilities for Wayland
    cliphist # Wayland clipboard manager
    herbstluftwm # Manual tiling window manger for X


  ];
}
