{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

  btop-cuda # Monitor of resources
  nvidia-container-toolkit # NVIDIA Container Toolkit
  # ollama-cuda # Get up and running with large language models locally, using CUDA for Nvidia GPU acceleration
  nv-codec-headers # FFmeg version of headers for NVENC - Major version

  ];

}

