# ❄️ NixOS Multi-host Config 

This configuration is based on [Ampersand's config](https://github.com/Andrey0189/nixos-config-reborn/tree/master)

## ✨ Features

- 🖥️ **Multiple Hosts Support**: Easy to configure for different hosts.
- 🎨 **Gruvbox Theme**: A perfect blend of vibrant and subtle colors.
- 🪟 **Hyprland + Waybar**: 10/10 window compositor on Wayland.
- 🏠 **Home Manager Integration**: lots of stuff configured.
- 🧇 **Tmux**: with my own hotkeys.
- 🌟 **Nushell + starship**: Efficient shell setup with lots of aliases.

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
    cp /etc/nixos/hardware-configuration.nix ./
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

7. **Rebuilding**:

    ```bash
    cd nixConfig 
    git add .
    nixos-rebuild switch --flake ./#<hostname>
    # or nixos-install --flake ./#<hostname> if you are installing on a fresh system
    home-manager switch
    ```

## 🤝 Contributions

Feel free to fork the repository and submit pull requests if you'd like to contribute improvements. Open issues if you encounter any problems with the config or have ideas for new features.
