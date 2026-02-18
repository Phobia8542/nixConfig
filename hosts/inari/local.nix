{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  btop-cuda # Monitor of resources

  ];
}
