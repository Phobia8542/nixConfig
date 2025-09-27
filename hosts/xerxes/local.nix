{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # ani-cli # Cli tool to browse and play anime
  # caido # Lightweight web security auditing toolkit
  brightnessctl # This program allows you to read and control device brightness
  light # GNU/Linux application to control backlights
  mako # Lightweight Wayland notification daemon
  feh # Lightweight image viewer
  dmenu # Generic, highly customizable, and efficient menu for the X Window
  screenkey # Screencast tool to display your keys inspired by Screenflick
  gromit-mpx # Desktop annotation tool
  xwayland # X server for interfacing X1 apps with Wayland protocol
  wl-clipboard # Command-line copy/paste utilities for Wayland
  cliphist # Wayland clipboard manager
  herbstluftwm # Manual tiling window manger for X
  # seatd # Minimal seat management daemon, and universal seat management library
  showmethekey # Show keys you typed on screen
  btop-rocm # Monitor of resources

  ];
}
