{ pkgs, ...}: {
  environment.systemPackages = with pkgs; [

  # ani-cli # Cli tool to browse and play anime
  # caido # Lightweight web security auditing toolkit
  gitlab # Gitlab Community edition
  gitlab-ee # Gitlab Enterprise Edition
  # lshw # Provide detailed information on the hardware configuration of the machine
  # lshw-gui # Provide detailed information on the hardware configuration of the machine
  # wireguard-tools # Tools for Wireguard secure network tunnel
  # wireguard-ui # Web user interface to manage your WireGuard setup
  btop-cuda # Monitor of resources

  ];
}
