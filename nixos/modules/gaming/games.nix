{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

    doomretro # Classic, refined DOOM source port
    doomrunner # graphical launcher of ZDoom and derivatives
    doomseeker # Multiplayer server browser for many Doom source ports
    srb2 # Sonic Robo Blast is a 3D Sonic the Hedgehog fangame based on modified version of Doom Legacy
    ringracers # Kart racing video game based on Sonic Robo Blast 2 (SRB2), itself based on a modified version of Doom Legacy
    vitetris # Terminal-based Tetris clone by Victor Nilsson
  ];
}
