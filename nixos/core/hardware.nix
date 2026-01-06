{ ... }:
{
  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
    graphics = {
      enable = true; # replaces opengl
      enable32Bit = true; # Enable 32Bit support
    };
    # fancontrol = {
      # enable = true;
      # config = {};
    # };
  };
}
