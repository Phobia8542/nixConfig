{ ... }:
{
  system = {
    autoUpgrade = {
      enable = true; # Enable automatic upgrades
      allowReboot = true; # Apply upgrade on reboot
    };
  };

  nix = {
    settings.auto-optimise-store = true;
    optimise.automatic = true;
    # gc = {
      # automatic = true;
      # dates = "weekly";
      # options = "--delete-older-than 14d";
    # }; # Uncomment if you want to us gc instead of nh clean
  };
}
