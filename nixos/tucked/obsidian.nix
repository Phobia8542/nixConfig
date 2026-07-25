{ pkgs, ... }:

let
  # Create a custom wrapper that adds the stable flags to the obsidian command
  obsidian-stable = pkgs.writeShellScriptBin "obsidian" ''
    exec ${pkgs.obsidian}/bin/obsidian \
      --ozone-platform=x11 \
      --disable-gpu \
      --no-sandbox
  '';
in
{
  # Add the wrapped version to your system packages
  environment.systemPackages = [
    obsidian-stable
  ];
}
