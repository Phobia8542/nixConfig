{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      # Fonts
      font-size = 12;
      font-family = "JetBrainsMono Nerd Font";

      # Focus settings
      unfocused-split-opacity = 0.75;

      # Themes
      theme = "dracula";
    };
  };
}
