{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # gitlab # Gitlab Community edition
  # gitlab-ee # Gitlab Enterprise Edition
  # wireguard-tools # Tools for Wireguard secure network tunnel
  btop-cuda # Monitor of resources
  nvidia-container-toolkit # NVIDIA Container Toolkit
  ollama-cuda # Get up and running with large language models locally, using CUDA for Nvidia GPU acceleration

  ];
  services.open-webui.enable = true;
}
