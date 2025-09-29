{
  programs = {

    # Multi-shell multi-command argument completer
    carapace = {
      enable = true;
      enableNushellIntegration = true;
      enableZshIntegration = true;
    };

    # fzf = {
     # enable = true;
     # colors = {
       # bg = "#1e1e1e";
       # "bg+" = "#1e1e1e";
       # fg = "#d4d4d4";
       # "fg+" = "#d4d4d4";
     # };
    # };

    # Fast cd command that learns your habits
    zoxide = {
      enable = true;
      enableNushellIntegration = true;
      enableZshIntegration = true;
    };
  };
}
