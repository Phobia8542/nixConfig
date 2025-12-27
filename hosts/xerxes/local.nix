{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # ani-cli # Cli tool to browse and play anime
  # caido # Lightweight web security auditing toolkit
  btop-rocm # Monitor of resources
  # wl-gammactl # Contrast, brightness, and gamma adjustments for Wayland
  # swww # Effecient animated wallpaper daemon for wayland, controlled at runtime
  # foodfetch # Yet another fetch to quickly get recipes
  # webcord # Discord and SpaceBar electron-based client implemented without Discord API
  # vesktop # Alternate client for Dicord with Vencord built-in
  # whatsie # Feature rich WhatsApp Client for Desktop Linux
  whatsapp-electron # Electron wrapper around Whatsapp

  ];
}
