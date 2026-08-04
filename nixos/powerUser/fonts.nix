{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    # Standard high-quality fonts
    noto-fonts
    roboto

    # Extra options
    # fira-code
    # iosevka
  ];
}
