{ pkgs, config, ... }:
{
  services.searx = {
    enable = true;
    package = pkgs.searxng;
  
    # Updated to point to the decrypted sops secret path 
    # defined in your sops.nix mapping [4]
    environmentFile = "/home/phobes/.config/sops/.searxng.env";

    settings = {
      general = {
        debug = false;
      };
      server = {
        # Adjusted to "0.0.0.0" if you want the instance accessible 
        # externally, as seen in your other services configuration [3]
        bind_address = "0.0.0.0"; 
        port = 6868;
      };
    };
  };
}