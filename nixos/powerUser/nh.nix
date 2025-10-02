{ user, ... }: {
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 14d --keep 3";
    flake = "/home/${user}/nixConfig";
  };
}
