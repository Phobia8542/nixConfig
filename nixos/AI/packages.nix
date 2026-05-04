{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    lmstudio # LM Studio is an easy to use desktop app for experimenting with local and open-source Large Language Models (LLMs)

  ];

}

