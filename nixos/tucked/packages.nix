{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

  # adguardhome # Network-wide ads & trackers blocking DNS server
  # alacritty-theme # Collection of alacritty color schemes
  # ani-cli # Cli tool to browse and play anime
  # basalt # TUI Application to manage Obsidian notes directly from the terminal
  # cbonsai # Grow bonsai trees in your terminal
  # cewler # Custom Word List generator Redefined
  cmatrix # Simulates the falling characters from The Matrix movie
  # fancontrol-gui # GUI for fancontrol with QT & KDE framework
  # flatpak # Linux application sandboxing and distribution framework
  # flatpak-builder # Tool to build flatpaks from source
  # foodfetch # Yet another fetch to quickly get recipes
  # gimp3 # GNU Image Manipulation Program
  # gitlab # Gitlab Community edition
  # gitlab-ee # Gitlab Enterprise Edition
  # ghostty # Fast, native, feature-rich terminal emulator pushing modern features
  goodvibes # A lightweight Radio player
  gtt # Google Translate TUI (Originally). Now support Apertium, Argos, Bing, ChatGPT, DeepL, Google, Reverso
  # hypnotix # An M3U IPTV player
  # johnny # Open Source GUI frontend for John the ripper
  legcord # Lightweight, alternative desktop client for Discord
  libnotify # Library that sends desktop notifications to a notification daemon
  libreoffice # Comprehensive, professional-quality productivity suite
  # lm_sensors # Tools for reading hardware sensors
  # mako # Lightweight Wayland notification daemon
  mediainfo # Supplies technical and tag information about a video or audio file
  mpv # General-purpose media player
  # nyaa # TUI tool for browser and downloading torrent
  piper # Neural text-to-speech engine
  # python313Packages.shodan # Python library and command-line utility for Shodan
  radiotray-ng # An internet radio player for linux
  # ranger # File manager with minimalistic curses interface
  # rpi-imager # Raspberry Pi Imaging Utility
  # seatd # Minimal seat management daemon, and universal seat management library
  # shortwave # Find and listen to internet radio stations
  # snort # Network intrusion prevention and detection system (IDS/IPS)
  # swww # Effecient animated wallpaper daemon for wayland, controlled at runtime
  transmission_4-qt # Fast, easy and free BitTorrent client
  # upwork # Online freelancing platform desktop applicatino for time tracking
  vencord # Cutest Discord client mod (Allows for customization of discord clients)
  # wasistlost # Unofficial WhatsApp desktop application (Later replaced by whatsapp-electron)
  # webcord # Discord and SpaceBar electron-based client implemented without Discord
  webcord-vencord # Webcord with Vencord web extension
  # wireguard-tools # Tools for Wireguard secure network tunnel
  # whatsapp-electron # Electron wrapper around Whatsapp
  # youtube-tui # Aesthetically pleasing YouTube TUI
  # zoxide # Fast cd command that learns your habits
  zoom-us # Video conferencing application

  ## IPHONE packages

  ifuse # Fuse filesystem implementation to access the contents of iOS devices
  libimobiledevice # Software library that talks the protocols to support iPhone, Ipod Touch, and iPad devices
  libheif # ISO/IEC HEIF image file format decoder and encoder
  localsend # Open source cross-platform alternative to AirDrop

  ];

}
