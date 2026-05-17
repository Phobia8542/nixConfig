{ config, pkgs, inputs, ... }:

{
  imports =
    [
      inputs.sops.nixosModules.sops
    ];

  sops = {
    # enable = true;
    defaultSopsFile = ../../secrets/secrets.encrypted.age; 
    defaultSopsFormat = "yaml";
    
    # Tell sops where to find the private key on the machine
    age.keyFile = "~/.config/sops/age.txt";
  };

  # sops.secrets.searx_key = {
    # This matches the variable name inside your encrypted file
    # but we are outputting it to a file the service can read
    # key = "SEARXNG_SECRET_KEY"; 
  # };
}