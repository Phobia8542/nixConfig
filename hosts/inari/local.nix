{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # gitlab # Gitlab Community edition
  # gitlab-ee # Gitlab Enterprise Edition
  # wireguard-tools # Tools for Wireguard secure network tunnel
  btop-cuda # Monitor of resources
  nvidia-container-toolkit # NVIDIA Container Toolkit

 
  ];
}
