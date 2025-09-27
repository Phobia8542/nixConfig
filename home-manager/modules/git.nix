{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    userEmail = "phobia8542@gmail.com";
    userName = "phobia8542";
  };

  home.packages = [ pkgs.gh ];
}
