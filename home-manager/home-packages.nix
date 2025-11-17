{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps

    # CLI utils
    bat # Cat clone with syntax highlighting and Git integration
    carapace # Multi-shell multi-command argument completer
    cava # Console-based Audio Visualizer for alsa
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
    # openjdk # Open-source Java Development Kit
    nodejs # Event-driven I/O framework for the V8 Javascript engine

    # WM stuff
    cliphist # Wayland clipboard manager
    dmenu # Generic, highly customizable, and efficient menu for the X Window
    libnotify # Library that sends desktop notifications to a notification daemon
    mako # Lightweight Wayland notification daemon
    wl-clipboard # Command-line copy/paste utilities for Wayland
    
    # Test packages
    # neovim # Vim text editor fork focused on extensibility and agility 
    showmethekey # Show keys you typed on screen
    feh # Lightweight image viewer
    screenkey # Screencast tool to display your keys inspired by Screenflick
    # rofi # Window switcher, run dialog and dmenu replacement

  ];
}
