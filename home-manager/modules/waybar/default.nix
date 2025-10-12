{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 35;
        modules-left = ["hyprland/workspaces"];
        modules-center = ["hyprland/window"];
        modules-right = ["cpu" "memory" "pulseaudio" "battery" "clock" "tray"];
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

          # persistent-workspaces = {
            # "*" = 9;
          # };
        };

        "cpu" = {
         interval = 10;
         format = "CPU: {icon} {usage}%"; 
         format-alt = "LOAD: {load}% AVG: {avg_frequency}%"; 
        };
        
        "memory" = {
         interval = 10;
         format = "RAM: {icon} {percentage}%"; 
         format-alt = "USED: {used:0.1f}GiB/{total:0.1f}GiB ({percentage}%) SWAP: {swapUsed:0.1f}GiB/{swapTotal:0.1f}GiB ({swapPercentage}%)"; 
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}%";
          format-muted = "🔇";
          format-icons = {
            "headphones" = "🎧";
            "handsfree" = "🔊";
            "headset" = "🔊";
            "phone" = "📱";
            "portable" = "📱";
            "car" = "🚗";
            "default" = ["🔈" "🔊"];
          };
          on-click = "pavucontrol";
          on-click-right = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
        };

        "battery" = {
          states = {
            warning = 30;
            critical = 1;
          };
          format = "{icon} {capacity}%";
          format-charging = "⚡ {capacity}%";
          format-alt = "{time} {icon}";
          format-icons = ["🔋" "🔋" "🔋" "🔋" "🔋"];
        };

        "clock" = {
          format = "{:%d.%m.%Y - %H:%M}";
          format-alt = "{:%A, %B %d at %R}";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
        };

        "tray" = {
          icon-size = 16;
          spacing = 2;
        };
      };
    };
  };
}
