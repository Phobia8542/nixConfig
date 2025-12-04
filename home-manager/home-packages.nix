{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    carapace # Multi-shell multi-command argument completer
    # ghostty # Fast, Native, feature-rich terminal emulator pushing modern features
    nushell # Modern shell written in Rust
    starship # Minimal, blazing fast, and extremely customizable prompt for any shell
    zoxide # Fast cd command that learns your habits
    feh # Lightweight image viewer

    cliphist # Wayland clipboard manager
    hyprpicker # Blazing fast wayland wallpaper utility
    libnotify # Library that sends desktop notifications to a notification daemon
    wl-clipboard # Command-line copy/paste utilities for Wayland
    
    # Test packages
    # rofi # Window switcher, run dialog and dmenu replacement

  ];
}
