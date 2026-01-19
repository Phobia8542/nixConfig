{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # ani-cli # Cli tool to browse and play anime
  caido # Lightweight web security auditing toolkit
  btop-rocm # Monitor of resources
  # swww # Effecient animated wallpaper daemon for wayland, controlled at runtime
  # foodfetch # Yet another fetch to quickly get recipes
  youtube-tui # Aesthetically pleasing YouTube TUI
  ollama-rocm # Get up and running with large language models locally, using ROCm for AMD GPU acceleration

  ];
  services.open-webui.enable = true;
}
