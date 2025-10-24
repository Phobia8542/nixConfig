{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  btop-rocm # Monitor of resources
  foodfetch # Yet another fetch to quickly get recipes

  ];
}
