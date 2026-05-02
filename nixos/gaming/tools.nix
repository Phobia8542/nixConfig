{ pkgs,...}:
{
  environment.systemPackages = with pkgs; [
    gamemode # Optimise Linux system performance on demand
    gamescope # SteamOS session compositing window manager
    # lutris # Open Source gaming platform for GNU/Linux
    mangohud # Vulkan and OpenGL overlay for monitoring FPS, temperatures, CPU/GPU load and more
    mesa # Open source 3D graphics library
    protonup-ng # CLI program and API to automate the installation and update of GloriousEggroll's Proton-GE
    protonup-qt # Install and manage Proton-GE and Luxtorpeda for Steam and Wine-GE for Lutris with this graphical user interface
    protontricks # Simple wrapper for running Winetricks for Proton-enabled games
  ];
}
