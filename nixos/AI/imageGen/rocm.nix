{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    stable-diffusion-cpp-rocm # Stable Diffusion inference in pure C/C++

  ];

}

