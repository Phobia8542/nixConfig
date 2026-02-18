{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    bc # GNU software calculator (used in the terminal)
    cron # Daemon for running commands at specific times
    curl # Command line tool for transferring files with URL syntax
    deluge # Torrent client
    dmenu # Generic, highly customizable, and efficient menu for the X Window
    docker # Open source project to pack, ship and run any application as a lightweight container
    fastfetch # Feature-rich & performance oriented neofetch (information tool)
    flameshot # Powerful yet simple to use screenshot software
    gh # GitHub CLi tool 
    git # Distributed version control system 
    glances # Cross-platform curses-based monitoring tool
    gparted # Graphical disk partitioning tool
    kdePackages.filelight # Quickly visualize your disk space usage
    kdePackages.partitionmanager # Manage the disk devices, partitions, and file systems on your computer:wallpaper
    lmstudio # LM Studio is an easy to use desktop app for experimenting with local and open-source Large Language Models (LLMs)
    neovide # Simple, no-nonsense, cross-platform graphical user interface for Neovim
    networkmanager-openvpn # NetworkManager's OpenVPN plugin
    protonvpn-gui # Proton VPN GTK app for linux
    tealdeer # Very fast implementation of tldr in Rust
    toipe # Yet another typing test, but crab flavoured
    unzip # Extraction utility for archives compressed in .zip format
    virtualbox # PC emulator
    wget # Tool for retrieving files using HTTP, HTTPS, and FTP
    zip # Compressor/archiver for creating and modifying zipfiles

  ];

}

