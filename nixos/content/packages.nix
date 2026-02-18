{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    audacity # Sound editor with graphical UI
    libva # Implementation for VA-API (Video Acceleration API)
    libvdpau # Library to use Video Decode and Presentation API for Unix (VDPAU)
    kdePackages.kdenlive # Free and open source video editor, based on MLT Framework and KDE Frameworksq
    shaderc # Collection of tools, libraries and tests for shader compilation

  ];

}

