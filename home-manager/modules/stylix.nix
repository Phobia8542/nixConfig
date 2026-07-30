{ pkgs, inputs, ... }: {
  imports = [ inputs.stylix.homeModules.stylix ];

  stylix = {
    enable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/dracula.yaml";

    # Minimal targets: only enable the essentials you need right now
    targets = {
      alacritty.enable = true;
      hyprland.enable = true;
      hyprlock.enable = true;
      neovim.enable = true;
      waybar.enable = false;
      wofi.enable = true;
      tmux.enable = true;
      btop.enable = true;
    };
  };

  home.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "kde";
    TERMINAL = "alacritty";
  };
}
