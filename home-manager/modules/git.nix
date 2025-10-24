{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings.user = {
      email = "phobia8542@gmail.com"; # Change to YOUR email
      name = "phobia8542"; # Change to YOUR username
    };
  };

  home.packages = [ pkgs.gh ];
}
