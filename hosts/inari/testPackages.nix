{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # ani-cli # Cli tool to browse and play anime
  # audacity # Sound editor with graphical UI
  # caido # Lightweight web security auditing toolkit
  # cava # Console-based Audio Visualizer for alsa
  # cavalier # Visualize audio with CAVA
  # cbonsai # Grow bonsai trees in your terminal
  # chromium # Open source web browser from Google
  # duf # Disk usage/Free utility
  # dufs # File server that supports tatic serving, uploading, searching, accessing control, webdav
  # duff # Quickly find duplicate files
  # dust # du + rust = dust. Like du but more intuitive
  # fd # Simple, fast and user-friendly alternative to find
  gitlab # Gitlab Community edition
  gitlab-ee # Gitlab Enterprise Edition
  # jdk # Open-source Java Development Kit
  # jetbrains-mono # Typeface made for developers
  # jetbrains-toolbox # JetBrains toolbox
  # katana # Next-generation crawling and spidering framework
  lshw # Provide detailed information on the hardware configuration of the machine
  lshw-gui # Provide detailed information on the hardware configuration of the machine
  # mdcat # Cat for markdown
  nil # Yet another language server for nix
  nixd # Nix language server, based on nix libraries
  # ouch # Command-line utility for easily compressing and decompressing file and directories
  # pipes-rs # Over-engineered rewrite of pipes.sh in rust
  # procs # Modern replacement for ps written in rust
  # ramfetch # Tool which displays memory information
  # sd # Intuitive find & replace CLI (sed alternative)
  # sublime # Sophisticatd text editor for code, mark up and prose
  # topgrade # Upgrade all the things
  # translate-shell # Command-line translator using Google Translate, Bing Translator, Yandex Translate, and Apertium
  # trashy # Simple, fast, and featureful alternatives to rm and trash-cli
  # tre-command # Tree command, improved
  # wireguard-tools # Tools for Wireguard secure network tunnel
  # wireguard-ui # Web user interface to manage your WireGuard setup
  # yazi # Blazing fast terminal manager written in Rust, based on async I/O
  # zenith # Sort of like top or htop but with zoom-able charts network and disk usage
  # zfxtop # fetch top for gen Z with X written by bubbletea enjoyer


  ];
}
