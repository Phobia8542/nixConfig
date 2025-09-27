{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # zfxtop # fetch top for gen Z with X written by bubbletea enjoyer
  btop-cuda # Monitor of resources

  ];
}
