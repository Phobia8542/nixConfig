{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # ani-cli # Cli tool to browse and play anime
  # caido # Lightweight web security auditing toolkit
  xwayland # X server for interfacing X1 apps with Wayland protocol
  # seatd # Minimal seat management daemon, and universal seat management library
  btop-cuda # Monitor of resources
  nvidia-container-toolkit # NVIDIA Container Toolkit
  # ollama-cuda # Get up and running with large language models locally, using CUDA for Nvidia GPU acceleration

  ];
}
