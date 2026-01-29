{ pkgs, ...}:
{
  services = { 
    ollama = {
      enable = true;
      package = pkgs.ollama-rocm;
      # acceleration = "rocm";
    };
    open-webui.enable = true;
  };
}