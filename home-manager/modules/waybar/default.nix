{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 35;
        modules-left = ["custom/launcher" "hyprland/workspaces"];
        modules-center = ["hyprland/window"];
        modules-right = ["network" "cpu" "memory" "pulseaudio" "battery" "clock" "tray"];
        "hyprland/workspaces" = {
          disable-scroll = false;
          show-special = true;
          special-visible-only = true;
          format = "{name}";
          format-icons = {
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            "magic" = "M";
          };
        };

        "cpu" = {
         interval = 10;
         format = "󰻠 {usage}%";
         format-alt = "LOAD: {load}%";
        };

        "memory" = {
         interval = 10;
         format = "󰍛 {percentage}%";
         format-alt = "USED: {used:0.1f}GiB";
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon}  {volume}%";
          format-muted = "S muted";
          format-icons = {
            "headphones" = "🎧";
            "headset" = "";
            "default" = "🔈";
          };
          on-click = "pavucontrol";
        };

        "battery" = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-charging = "󱐋 {capacity}%";
          format-plugged = " {capacity}%";
          format-icons = ["🔋"];
        };

        "clock" = {
          format = " {:%H:%M}";
          format-alt = "��C {:%A, %B %d}";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
        };

        "network" = {
          format-wifi = " {essid}";
          format-ethernet = "󰈀 {ipaddr}";
          format-disconnected = "󰖪 Disconnected";
          tooltip-format = "Interface: {ifname}\nIP: {ipaddr}";
          on-click-right = "alacritty -e nmtui";
        };

        "tray" = {
          icon-size = 16;
          spacing = 10;
        };

        "custom/launcher" = {
          format = "";
          on-click = "wofi --show drun";
          tooltip = false;
        };
      };
    };
    style = ./style.css;
  };
}
