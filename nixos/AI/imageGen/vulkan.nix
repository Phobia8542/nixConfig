{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    stable-diffusion-cpp-vulkan # Stable Diffusion inference in pure C/C++

  ];

}

