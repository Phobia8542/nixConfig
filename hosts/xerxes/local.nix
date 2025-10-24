{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # ani-cli # Cli tool to browse and play anime
  # caido # Lightweight web security auditing toolkit
  btop-rocm # Monitor of resources
  # wl-gammactl # Contrast, brightness, and gamma adjustments for Wayland
  # swww # Effecient animated wallpaper daemon for wayland, controlled at runtime
  foodfetch # Yet another fetch to quickly get recipes

  ];
}
