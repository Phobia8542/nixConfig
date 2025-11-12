{
  networking = {
    networkmanager = {
    	enable = true; # Enable network manager
	wifi.backend = "iwd"; # enable iwd as backend for NetworkManager
    };
    firewall = {
      enable = true; # enable firewall
    };
    wireless.iwd = {
      enable = true;
      settings = {
        IPv4.Enabled = true;
	IPv6.Enabled = true;
    Setings.AutoConnect = true;
      };
    };
    extraHosts =
    "
      10.0.0.204 artemis
      10.0.0.34 amadeus
      10.0.0.32 xerxes
      10.0.0.4 xerxes
      10.0.0.11 inari
      192.168.2.79 circe
    ";
  };
}
