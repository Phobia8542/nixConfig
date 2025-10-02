{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    audacity # Sound editor with graphical UI
    bat # Cat(1) clone with syntax highlighting and Git integration
    cava # Console-based Audio Visualizer for alsa
    # cavalier # Visualize audio with CAVA
    cbonsai # Grow bonsai trees in your terminal
    cmatrix # Simulates the falling characters from The Matrix movie
    cron # Daemon for running commands at specific times
    curl # Command line tool for transferring files with URL syntax
    deluge # Torrent client
    docker # Open source project to pack, ship and run any application as a lightweight container
    firefox # Web browser
    flatpak # Linux application sandboxing and distribution framework
    flatpak-builder # Tool to build flatpaks from source
    flameshot # Powerful yet simple to use screenshot software
    glances # Cross-platform curses-based monitoring tool
    gtt # Google Translate TUI (Originally). Now support Apertium, Argos, Bing, ChatGPT, DeepL, Google, Reverso
    kdePackages.filelight # Quickly visualize your disk space usage
    kdePackages.kdenlive # Free and open source video editor, based on MLT Framework and KDE Frameworksq
    kdePackages.partitionmanager # Manage the disk devices, partitions, and file systems on your computer
    killall
    lmstudio # LM Studio is an easy to use desktop app for experimenting with local and open-source Large Language Models (LLMs)
    neofetch # Fast, highly customizable system info script
    nil
    nixd # Nix language server, based on nix libraries
    networkmanager-openvpn # NetworkManager's OpenVPN plugin
    nvidia-container-toolkit # NVIDIA Container Toolkit
    nvtopPackages.full # (h)top like task monitor for AMD, Adreno, Intel and NVIDIA GPUs
    openvpn # Robust and highly flexible tunneling application
    rpi-imager # Raspberry Pi Imaging Utility
    tealdeer # Very fast implementation of tldr in Rust
    toipe # Yet another typing test, but crab flavoured
    unzip # Extraction utility for archives compressed in .zip format
    virtualbox # PC emulator
    vscodium # Open source sode editor developed by Microsoft
    wget # Tool for retrieving files using HTTP, HTTPS, and FTP
    whatsapp-for-linux # Whatsapp desktop messaging app
    zoxide # Fast cd command that learns your habits

  ];

}

