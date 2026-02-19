{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically
    # Intended to turn into modules later 

    alacritty # Cross-platform, GPU-accelerated terminal emulator 
    bat # Cat clone with syntax highlighting and Git integration
    brave # Privacy-oriented browser for Desktop and Laptop computers
    brightnessctl # This program allows you to read and control device brightness
    carapace # Multi-shell multi-command argument completer
    cava # Console-based Audio Visualizer for alsa
    cliphist # Wayland clipboard manager
    feh # Lightweight image viewer
    firefox # Web browser
    # hyprpicker # Blazing fast wayland wallpaper utility
    htop # Interactive process viewer
    kitty # Fast, feature-rich, GPU based terminal emulator
    librewolf # Fork of Firefox, focused on privacy, security and freedom
    light # GNU/Linux application to control backlights
    nushell # Modern shell written in Rust
    obsidian # Powerful knowledge base that works on top of a local folder of plain text Markdown files
    pavucontrol # PulseAudio Volume Control
    playerctl # Command-line utility and library for controlling media players that implement
    starship # Minimal, blazing fast, and extremely customizable prompt for any shell
    vscodium # Open source code editor developed by Microsoft
    zoxide # Fast cd command that learns your habits
    
    # Test packages
    # rofi # Window switcher, run dialog and dmenu replacement


  ];
}
