{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    obs-studio # Free and open source software for video recording and live streaming
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
    kitty
    librewolf
    mediainfo
    nushell
    playerctl
    showmethekey
    starship
    unzip
    wget
    zip
    zoxide

    # Coding stuff
    openjdk23
    nodejs
    python311

    # WM stuff
    kdePackages.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

  ];
}
