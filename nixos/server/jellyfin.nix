{ pkgs, ... }:
{
  networking.firewall.allowedTCPPorts = [80 443]; # Opens port 80 & 443 for browser use (whitelisting)

  services.jellyfin = {
    enable = true;
    openFirewall = true;
    user = "phobes"; # Change/Set username (Default user is jellyfin)
    # group = "jellyfin"; # Recommended for security reasons
  };

  # Enable Caddy (Set proxy IP to YOUR host's IP) - Allows for use of server while using VPN
  services.caddy = {
    enable = true;
    virtualHosts."localhost".extraConfig =
      ''
        reverse_proxy http://10.0.0.32:80
        tls internal
      '';
  };

  environment.systemPackages = with pkgs; [
    jellyfin # Free Software Media System
    jellyfin-web # Web Client for Jellyfin
    jellyfin-ffmpeg # Complete, cross-platform solution to record, convert and stream audio and video (Jellyfin Fork)
    ffmpeg-full # Complete, cross-platofrm solution to record, convert and stream audio and video
  ];
}
