{ ...}:
{
  programs.nushell.shellAliases = {

    gL = "glances"; # Launch glances
    ipy = "ipython";
    iSt = "speedtest-rs"; # Check internet speed
    l = "ls -l";
    la = "ls -la ";
    nV = "nvtop"; # Launch nvtop
    piv = "python -m venv .venv";
    py = "python";
    rB = "reboot"; # reboot system
    sA = "scope aliases"; # Display available aliases for NuShell
    sD = "sudo systemctl disable"; # Disable system service
    sE = "sudo systemctl enable"; # Enable system service
    sO = "shutdown -P"; # Power-of machine
    sS = "sudo systemctl status"; # Check status of system service
    sR = "sudo systemctl restart"; # Restart system service
    vi = "start"; # Swap vi for default text editor
    w = "which"; # Show the full path of shell commands
    y = "yazi";

    ## Docker commands

    dCd = "docker compose down"; # Stop docker compose image
    dCh = "docker compose up -d"; # Start docker compose image (headless)
    dCu = "docker compose up"; # Start docker compose image
    dPa = "docker ps --all"; # List all running docker containers
    dS = "docker stop"; # Stop docker service (MUST name service)
    dSt = "docker stats"; # Display live stream of containers resource usage
    mD = "docker stop miner"; # Miner Down
    mU = "docker start miner"; # Miner Up

    ## Git commands

    gA = "git add *"; # Git Add all files in current working directory
    gC = "git clone"; # Git Clone
    gCm = "git commit -m"; # git commit with message (must include "message")
    gO = "git push origin"; # Git Push to main branch
    gP = "git pull"; # Git Pull
    gS = "git status"; # Git status

    ## NixOS commands

    bSf = "sudo nixos-rebuild build --flake . --show-trace"; # Build current flake (will not effect reboot)
    cC = "sudo cp /etc/nixos/configuration.nix ."; # Copy Config file to current working directory
    cHf = "cp ~/.config/home-manager/home.nix ."; # Copy Home-manager config file to current working directory
    cDf = "sudo cp -r ~/.dotfile ."; # Copy dotfile to current working directory
    dF = "cd ~/.dotfile/"; # Move directly to dotfiles
    dFc = "cd ~/.dotfile/modules/core"; # Move directly to system dotfiles
    dFh = "cd ~/.dotfile/modules/home"; # Move directly to home-manager dotfiles
    dFg = "cd ~/.dotfile/modules/gaming"; # Move directly to gaming dotfiles
    eC = "sudo start /etc/nixos/configuration.nix"; # Edit Config file
    eH = "start ~/.config/home-manager/home.nix"; # Edit Home-manager
    hMg = "home-manager generations"; # List home-manager generations
    hMr = "home-manager remove-generations"; # Remove home-manager generations
    nCg = "sudo nix-collect-garbage"; # Delete unreachable store objects
    nGc = "sudo nix-store --gc"; # Garbage collection
    nLg = "nixos-rebuild list-generations"; #
    nFu = "nix flake update"; # Update flake (package manager update)
    nS = "nix-search"; # Search for nix packages
    tSf = "sudo nixos-rebuild test --flake . --show-trace"; # Test Build using current flake
    tH = "home-manager build --flake . --show-trace"; # Test Home-manager configuration
    uH = "home-manager switch --flake . --show-trace"; # Update Home-manager
    uSf = "sudo nixos-rebuild switch --flake . --show-trace --upgrade"; # Update & upgrade System flake

    ## Tmux commands

    tm = "tmux"; # Start new tmux session
    tmA = "tmux at"; # Attach to existing tmux session(s)
    tmD = "tmux detach"; # Detach tmux session
    tmL = "tmux ls"; # List tmux sessions

  };
}
