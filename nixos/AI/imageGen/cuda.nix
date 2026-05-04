{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    stable-diffusion-cpp-cuda # Stable Diffusion inference in pure C/C++

  ];

}

