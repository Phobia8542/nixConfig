{ config, pkgs, ...}:
{
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs # Obs-studio plugin that allows you to screen capture on wlroots based wayland compositors
      obs-tuna # Song information plugin for obs-studio
      obs-vkcapture # OBS Linux Vulkan/OpenGL game capture
      input-overlay # Show keyboard, gamepad and mouse input on stream
      obs-multi-rtmp # Multi-site simultaneous broadcast plugin for OBS Studio
      obs-mute-filter # OBS Studio plugin to mute audio of a source
      obs-pipewire-audio-capture # Used to seperate audio tracks (Must install wireplumber audio service)
    ];
  };
}