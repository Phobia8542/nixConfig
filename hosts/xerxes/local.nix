{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  btop-rocm # Monitor of resources

  ];
}
