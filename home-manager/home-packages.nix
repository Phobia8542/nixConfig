{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Packages in each category are sorted alphabetically

    # Desktop apps
    obs-studio # Free and open source software for video recording and live streaming
    obsidian # Power knowledge base that works on top of a local folder of plain text Markdown files

    # CLI utils
    # btop
    carapace # Multi-shell multi-command argument completer
    ffmpeg
    ffmpegthumbnailer
    fzf
    gh
    ghostty
    htop
    hyprpicker
    kitty
    librewolf
    # mediainfo
    nushell
    # playerctl
    # showmethekey
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
    libsForQt5.xwaylandvideobridge
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

  ];
}
