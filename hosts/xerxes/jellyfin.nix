{ pkgs, ... }:
{
  networking.firewall.allowedTCPPorts = [80 443];

  services.jellyfin = {
    enable = true;
    openFirewall = true;
    user = "phobes";
    # group = "jellyfin";
    # bindAddress = "0.0.0.0:8086";
    # forceHttps = true;
  };

  # Enable Caddy HTTPS Web Server with Let's Encrypt auto-TLS
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
  ];
}
