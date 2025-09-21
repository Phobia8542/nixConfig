{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    audacity # Sound editor with graphical UI
    bat # Cat(1) clone with syntax highlighting and Git integration
    bitwarden-desktop # Secure and free password manager for all of your devices
    brave # Privacy-oriented browser for Desktop and Laptop computers
    # cava # Console-based Audio Visualizer for alsa
    # cavalier # Visualize audio with CAVA
    # cbonsai # Grow bonsai trees in your terminal
    # cmatrix # Simulates the falling characters from The Matrix movie
    cron # Daemon for running commands at specific times
    curl # Command line tool for transferring files with URL syntax
    deluge # Torrent client
    discord # All-in-one cross-platform voice and text chat for gamers
    docker # Open source project to pack, ship and run any application as a lightweight container
    firefox # Web browser
    flatpak # Linux application sandboxing and distribution framework
    flatpak-builder # Tool to build flatpaks from source
    flameshot # Powerful yet simple to use screenshot software
    glances # Cross-platform curses-based monitoring tool
    gtt # Google Translate TUI (Originally). Now support Apertium, Argos, Bing, ChatGPT, DeepL, Google, Reverso
    kdePackages.kcalc # Scientific calculator
    kdePackages.filelight # Quickly visualize your disk space usage
    kdePackages.kdenlive # Free and open source video editor, based on MLT Framework and KDE Frameworksq
    kdePackages.partitionmanager # Manage the disk devices, partitions, and file systems on your computer
    killall
    librewolf # Fork of Firefox, focused on privacy, security and freedom
    lmstudio # LM Studio is an easy to use desktop app for experimenting with local and open-source Large Language Models (LLMs)
    neofetch # Fast, highly customizable system info script
    nil
    nixd # Nix language server, based on nix libraries
    nix-search # Nix-channel-compatible package search
    nix-search-cli # CLI for searching packages on search.nixos.org
    networkmanager-openvpn # NetworkManager's OpenVPN plugin
    nvidia-container-toolkit # NVIDIA Container Toolkit
    nvtopPackages.full # (h)top like task monitor for AMD, Adreno, Intel and NVIDIA GPUs
    obsidian # Powerful knowledge base that works on top of a local folder of plain text Markdown files
    openvpn # Robust and highly flexible tunneling application
    rpi-imager # Raspberry Pi Imaging Utility
    tealdeer # Very fast implementation of tldr in Rust
    thunderbird # full-featured e-mail client
    toipe # Yet another typing test, but crab flavoured
    # ttyper # Terminal-based typing test
    unzip # Extraction utility for archives compressed in .zip format
    virtualbox # PC emulator
    vlc # Cross-platform media player and streaming server
    vscodium # Open source sode editor developed by Microsoft
    wget # Tool for retrieving files using HTTP, HTTPS, and FTP
    whatsapp-for-linux # Whatsapp desktop messaging app
    youtube-music # Electron wrapper around YouTube Music
    zoxide # Fast cd command that learns your habits
    zram-generator # Systemd unit generator for zram devices

    # Security tools
    amass # In-Depth DNS Enumeration and Network Mapping
    assetfinder # Find domains and subdomains related to a given domain
    burpsuite # An integrated platform for performing security testing of web applications
    clamav # Antivirus engine designed for detecting Trojans, viruses, malware and other malicious threats
    # cewl # Custom wordlist generator
    # cewler # Custom Word List generator Redefined
    dig # Domain name server
    dirb # Web content scanner
    dirbuster # Brute force directories and files names on web/application servers
    dnsenum # Tool to enumerate DNS information
    dnsrecon # DNS Enumeration script
    enum4linux # Tool for enumerating information from Windows and Samba systems
    exploitdb # Archive of public exploits and corresponding vulnerable software
    fail2ban # Program that scans log files for repeated failing login attempts and bans IP addresses
    feroxbuster # Fast, simple, recursive content discovery tool
    ffuf # Tool for web fuzzing
    gowitness # Web screenshot utility
    gping # Ping, but with a graph
    httprobe # Take a list of domains and probe for working HTTP and HTTPS servers
    httpx # Fast and multi-purpose HTTP toolkit
    john # John the Ripper password cracker
    johnny # Open Source GUI frontend for John the ripper
    metasploit # Metasploit Framework - a collection of exploits
    naabu # Fast SYN/CONNECT port scanner
    netcat # Utility which reads and write data across network connections
    nikto # Web server scanner
    nmap # Free and open source utility for network discovery and security auditing
    nuclei # Tool for configurable targeted scanning
    nuclei-templates # Templates for the nuclei engine to find security vulnerabilities
    protonvpn-gui # Proton VPN GTK app for linux
    # python313Packages.shodan # Python library and command-line utility for Shodan
    # snort # Network intrusion prevention and detection system (IDS/IPS)
    speedtest-rs # Command line internet speedtest tool written in rust
    sqlmap # Automatic SQL injeciton and database takeover tool
    subfinder # Subdomain discovery tool
    theharvester # Gather E-mails, subdomains and names from different public sources
    thc-hydra # Very fast network logon cracker which support many different services
    tshark # Powerful network protocol analyzer
    wfuzz # Web content fuzzer to facilitate web application assessments
    wireshark # Powerful network protocol analyzer
    wpscan # Black box Wordpress vulnerability scanner
    zap # Java application for web penetration testing

  ];

  programs = {
    appimage = {
      enable = true;
      binfmt = true;
    };
  };

}
