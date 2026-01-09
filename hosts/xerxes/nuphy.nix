{
  services.udev.extraRules = 
  ''
      KERNEL=="hidraw*", SUBSYSTEM=="hidraw", GROUP="hidraw", MODE="0660"
  '';
  users = {
    groups = {
      hidraw = { };
    };
    users.phobes.extraGroups = [ "hidraw" ];
  };
}