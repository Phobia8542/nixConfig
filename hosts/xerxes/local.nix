{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  btop-rocm # Monitor of resources
  # qbittorrent # Featureful free software BitTorrent client
  # qbittorrent-enhanced # Unofficial enhanced version of qBittorent, a BitTorrent client
  # xf86-video-amdgpu # Xorg driver for AMD Radeon GPUs using the amdgpu kernel driver


  ];
}
