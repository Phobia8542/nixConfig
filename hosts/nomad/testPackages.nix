{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # ani-cli # Cli tool to browse and play anime
  # bluez # Official Linux Bluetooth protocol stack
  # bluez-tools # Set of tools to manage bluetooth devices for linux
  # blueman # GTK-based Bluetooth Manager
  # caido # Lightweight web security auditing toolkit
  # chafa # Terminal graphics for the 21st century
  # cpufetch # Simplistic yet fancy CPU architecture fetching tool
  # duf # Disk Usage/Free Utility
  # dufs # File server that supports static serving, uploadin, searching, accessing control, webdav
  # duff # Quickly find duplicate files
  # dust # du + rust = dust. Like du but more intuitive
  # fd # Simple, fast and user-friendly alternateive to find
  # figlet
  # flatpak # Linux application sandboxing and distribution framework
  # flatpak-builder # Tool to build flatpaks from source# Program for making large letters out of ordinary text
  # gpu-viewer # Front-end to glxinfo, vulkaninfo, clinfo and es2_info
  # hexyl # Command-line hex viewer
  # ipfetch # Neofetch but for ip addresses
  # jdk # Open-source Java Development Kit
  #  lsd # Next gen ls command
  # lsof # Tool to list open files
  # mdcat # Cat for markdown
  # onefetch # Git repository summary on your terminal
  # open-webui # Comprehensive suite for LLMs with a user-friendly WebUI
  # ouch # Command-line utility for easily compressing and decompressing file and directories
  # pciutils # Collection of programs for inspecting and manipulating configuration of PCI devices
  # procs # Modern replacement for ps written in rust
  # ramfetch # Tool which displays memory information
  # reaction # Scan logs and take action: an alternative to fail2ban
  # ripgrep-all # Ripgrep, but also search in PDFs, E-Books, Office documents, zip, tar.gz, and more
  # sd # Intuitive find & replace CLI (sed alternative)
  # topgrade # Upgrade all the things
  # translate-shell # Command-line translator using Google Translate, Bing Translator, Yandex.Translate, and Apertium
  # trashy # Simple, fast, and featureful alternatives to rm and trash-cli
  # tre-command # Tree command, improved
  # viu # Command-line application to view images from the terminal written in rust
  # wlr-randr # Xrandr clone for wlroots compositors
  # yazi # Blazing fast terminal file manager written in Rust, based on Rust based on async I/O
  # zfxtop # fetch top for gen Z with X written by bubbletea enjoyer

  ];
}
