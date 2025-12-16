{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    carapace # Multi-shell multi-command argument completer
    feh # Lightweight image viewer
    # ghostty # Fast, Native, feature-rich terminal emulator pushing modern features
    hyprpicker # Blazing fast wayland wallpaper utility
    nushell # Modern shell written in Rust
    starship # Minimal, blazing fast, and extremely customizable prompt for any shell
    zoxide # Fast cd command that learns your habits
    
    # Test packages
    # rofi # Window switcher, run dialog and dmenu replacement

  ];
}
