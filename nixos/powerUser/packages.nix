{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    audacity # Sound editor with graphical UI
    # alacritty-theme # Collection of alacritty color schemes
    bat # Cat clone with syntax highlighting and Git integration
    bc # GNU software calculator (used in the terminal)
    cava # Console-based Audio Visualizer for alsa
    cbonsai # Grow bonsai trees in your terminal
    cmatrix # Simulates the falling characters from The Matrix movie
    cron # Daemon for running commands at specific times
    curl # Command line tool for transferring files with URL syntax
    deluge # Torrent client
    dmenu # Generic, highly customizable, and efficient menu for the X Window
    docker # Open source project to pack, ship and run any application as a lightweight container
    fastfetch # Feature-rich & performance oriented neofetch (information tool)
    flameshot # Powerful yet simple to use screenshot software
    flatpak # Linux application sandboxing and distribution framework
    flatpak-builder # Tool to build flatpaks from source
    gh # GitHub CLi tool 
    git # Distributed version control system 
    gimp3 # GNU Image Manipulation Program
    glances # Cross-platform curses-based monitoring tool
    gparted # Graphical disk partitioning tool
    gtt # Google Translate TUI (Originally). Now support Apertium, Argos, Bing, ChatGPT, DeepL, Google, Reverso
    kdePackages.filelight # Quickly visualize your disk space usage
    kdePackages.kdenlive # Free and open source video editor, based on MLT Framework and KDE Frameworksq
    kdePackages.partitionmanager # Manage the disk devices, partitions, and file systems on your computer:wallpaper
    lmstudio # LM Studio is an easy to use desktop app for experimenting with local and open-source Large Language Models (LLMs)
    mako # Lightweight Wayland notification daemon
    networkmanager-openvpn # NetworkManager's OpenVPN plugin
    nil
    nixd # Nix language server, based on nix libraries
    protonvpn-gui # Proton VPN GTK app for linux
    ranger # File manager with minimalistic curses interface
    # rpi-imager # Raspberry Pi Imaging Utility
    tealdeer # Very fast implementation of tldr in Rust
    toipe # Yet another typing test, but crab flavoured
    unzip # Extraction utility for archives compressed in .zip format
    virtualbox # PC emulator
    # wasistlost # Unofficial WhatsApp desktop application
    wget # Tool for retrieving files using HTTP, HTTPS, and FTP
    zip # Compressor/archiver for creating and modifying zipfiles
    zoxide # Fast cd command that learns your habits

  ];

}

