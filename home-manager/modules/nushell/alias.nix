{ ...}:
{
  programs.nushell.shellAliases = {

    gL = "glances"; # Launch glances
    iSt = "speedtest-rs"; # Check internet speed
    l = "ls -l";
    la = "ls -la ";
    ll = "ls -lh ";
    nV = "nvtop"; # Launch nvtop
    rB = "reboot"; # reboot system
    sA = "scope aliases"; # Display available aliases for NuShell
    sCd = "sudo systemctl disable"; # Disable system service
    sCe = "sudo systemctl enable"; # Enable system service
    sO = "shutdown -P"; # Power-of machine
    sCs = "sudo systemctl status"; # Check status of system service
    sCr = "sudo systemctl restart"; # Restart system service
    vi = "start"; # Swap vi for default text editor
    w = "which"; # Show the full path of shell commands

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

    bSf = "sudo nixos-rebuild build --flake"; # Build current flake (will not effect reboot) - MUST be followed by "./#hostname --show-trace"
    cHf = "cp ~/.config/home-manager/home.nix ."; # Copy Home-manager config file to current working directory
    dF = "cd ~/nixConfig/"; # Move directly to dotfiles
    dFc = "cd ~/nixConfig/nixos/core"; # Move directly to system dotfiles
    dFh = "cd ~/nixConfig/home-manager/modules"; # Move directly to home-manager modules
    eH = "start ~/nixConfig/home-manager"; # Edit Home-manager configuration
    hMg = "home-manager generations"; # List home-manager generations
    hMr = "home-manager remove-generations"; # Remove home-manager generations
    nCg = "sudo nix-collect-garbage"; # Delete unreachable store objects
    nGc = "sudo nix-store --gc"; # Garbage collection
    nLg = "nixos-rebuild list-generations"; #
    nFu = "nix flake update"; # Update flake (package manager update)
    nS = "nix-search"; # Search for nix packages
    tSf = "sudo nixos-rebuild test --flake"; # Test Build using current flake
    tH = "home-manager build --flake . --show-trace"; # Test Home-manager configuration
    uH = "home-manager switch --flake . --show-trace"; # Update Home-manager
    uSf = "sudo nixos-rebuild switch --flake"; # Update & upgrade System flake  - MUST be followed by "./#hostname --show-trace --upgrade"

    ## Tmux commands

    tm = "tmux"; # Start new tmux session
    tmA = "tmux at"; # Attach to existing tmux session(s)
    tmD = "tmux detach"; # Detach tmux session
    tmL = "tmux ls"; # List tmux sessions

    ## Niche commands
    cC = "sudo cp /etc/nixos/configuration.nix ."; # Copy Config file to current working directory
    # cDf = "sudo cp -r ~/.dotfile ."; # Copy dotfile to current working directory
    eC = "sudo start /etc/nixos/configuration.nix"; # Edit Config file
    # ipy = "ipython";
    # piv = "python -m venv .venv";
    # py = "python";
    # y = "yazi";


  };
}
