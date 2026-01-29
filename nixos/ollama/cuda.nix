{ pkgs, ...}:
{
  services = { 
    ollama = {
      enable = true;
      package = pkgs.ollama-cuda;
      # acceleration = "cuda";
    };
    open-webui.enable = true;
  };
}