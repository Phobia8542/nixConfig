# NixOS Multi-host Config 

This configuration is based on [Ampersand's config](https://github.com/Andrey0189/nixos-config-reborn/tree/master)

## ✨ Features

- 🖥️ **Multiple Hosts Support**: Easy to configure for different hosts.
- 🎨 **Dark Theme**: By default set to a dark colour scheme (Easy to change).
- 🪟 **Hyprland + Waybar**: This Hyprland configuration is using UWSM.
- 🏠 **Home Manager Integration**: A simple way to manage user configurations.
- 🧇 **Tmux**: With preconfigured hotkeys.
- 🌟 **Nushell + starship**: NuShell pre-configured with aliases.

## Prerequisites

1. **Change hostname** You will need to change your host name for changes to take effect (Make sure to use `sudo` for changes to be applied)

    ```bash
    sudo nano /etc/nixos/configuration.nix
    ```

Edit `networking.hostName = "nixos"` to your given hostname

2. **Enable packages** You'll want to install git - Optional: vim & vscodium

Below `environment.systemPackages = with pkgs` you'll see vim commented out with a `#` symbol. Simply remove `#` to enable vim
Add `git` below vim in order to install git
Add `vscodium` below to install vscodium

3. **Enable Flakes** 

At the bottom of the page below `system.stateVersion = "xx.xx";` append:

    ```bash
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    ```

4. **Save & test new build** Must complete this step for configuration to work

Exit nano by pressing `ctrl + x`, then press `y` to confirm choice, and `enter` (DO NOT change filename before exiting)

While in `/etc/nixos` directory: Test before switch

    ```bash
    sudo nixos-rebuild test
    ```

If/When successfully built:

    ```bash
    sudo nixos-rebuild switch
    ```

5. **Reboot**

    ```bash
    reboot
    ```


## 🚀 Installation

To get started with this setup, follow these steps:

1. **Install NixOS**: If you haven't already installed NixOS, follow the [NixOS Installation Guide](https://nixos.org/manual/nixos/stable/#sec-installation) for detailed instructions.
2. **Clone the Repository**:

	```bash
    git clone https://github.com/Phobia8542/nixConfig
    cd nixConfig 
    ```

3. **Copy one of the hosts configuration to set up your own**:

    ```bash
    cd hosts
    cp -r xerxes <your_hostname>
    cd <your_hostname>
    ```

4. **Put your `hardware-configuration.nix` file there**:

    ```bash
    sudo cp /etc/nixos/hardware-configuration.nix .
    ```

5. **Edit `hosts/<your_hostname>/local.nix` and `nixos/core/packages.nix` files if needed**:

    ```bash
    vim local.nix
    vim ../../nixos/core/packages.nix
    ```

6. **Finally, edit the `flake.nix` file**:

    ```diff
    ...
      outputs = { self, nixpkgs, home-manager, ... }@inputs: let
        system = "x86_64-linux";
    --  homeStateVersion = "24.11";
    ++  homeStateVersion = "<your_home_manager_state_version>";
    --  user = "phobes";
    ++  user = "<your_username>";
        hosts = [
    --    { hostname = "xerxes"; stateVersion = "24.05"; }
    --    { hostname = "inari"; stateVersion = "24.05"; }
    ++    { hostname = "<your_hostname>"; stateVersion = "<your_state_version>"; }
        ];
    ...
    ```

7. **Remove traces of phobes** Make sure YOUR user information is correct before rebuild

In text editor search for `phobes` and swap all highlighted sections with YOUR username (This excludes `README.md`)

8. **Rebuilding**: MUST be in flake directory (test before switch)

    ```bash
    cd nixConfig 
    git add .
    git status
    sudo nixos-rebuild switch --flake ./#<hostname>
    # or nixos-install --flake ./#<hostname> if you are installing on a fresh system
    home-manager switch --flake . --show-trace
    ```
    
## Post set up tweaks

Settings up Jellyfin: Go to `nixos/server` to view README.md for server configuration

Change git credentials (gh): Edit `home-manager/git.nix`, add appropriate credentials

Soft link configuration on home directory (optional): 

    ```bash
    ln -s location/of/nixConfg ~/
    ```

## 🤝 Contributions

Feel free to fork the repository and submit pull requests if you'd like to contribute improvements. Open issues if you encounter any problems with the config or have ideas for new features.
