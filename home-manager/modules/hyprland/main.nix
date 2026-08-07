{ pkgs, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    configType = "hyprlang";
    settings = {
      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = [
        "desc:Samsung Electric Company SAMSUNG 0x00000001, preferred, auto-left, 1" # 1080p@60 TV (default)
        "desc:LG Electronics LG ULTRAGEAR 0x000593BD, preferred, 2560x0, 1" # 1080p@240 Gaming monitor (default)
        "desc:Samsung Electric Company LS32AG55x H1AK500000, preferred, 0x0, 1" # 1440p@165 Curved monitor
        "desc:LG Electronics LG ULTRAGEAR 408NTYT1J122, preferred, auto-right, 1" # 1440p@144 Gaming monitor
        "desc:LG Electronics webOS TV 0x01010101, disabled" # 2160p@60 TV (off)
        # "desc:LG Electronics webOS TV 0x01010101, preferred, auto-left, 1" # 2160p@60 TV
        # "desc:LG Electronics webOS TV 0x01010101, preferred, auto, 1, mirror, DP-1" # TV
        # "desc:Acer Technologies SA271 0x2167AD74, preferred, auto-right, 1" # 1080p@72 office monitor
        # "desc:Samsung Electric Company LS32AG55x H1AK500000, preferred, auto-left, 1, transform, 3" # Auxillary monitor (Vertical setup)
        ",preferred, auto,1" # default config
      ];
      "$mainMod" = "SUPER";
      "$terminal" = "alacritty";
      "$fileManager" = "$terminal -e sh -c 'ranger'";
      "$menu" = "wofi";
      "$browser" = "librewolf";

      exec-once = [
        # Only keep things that MUST start with Hyprland (usually nothing if using systemd)
      ];

      general = {
        gaps_in = 5;
        gaps_out = 5;

        border_size = 5;

        resize_on_border = true;

        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 10;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
          enabled = true;
        };

        blur = {
          enabled = true;
        };
      };

      animations = {
        enabled = true;
      };

      input = {
        kb_layout = "us";
        kb_options = "grp:caps_toggle";
      };

      dwindle = {
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      workspace = [
        "w[tv1], gapsout:10, gapsin:10"
        "f[1], gapsout:10, gapsin:10"
      ];
    };
  };

  systemd.user.services.waybar = {
    Unit = { Description = "Waybar"; };
    Service = {
      ExecStart = "${pkgs.waybar}/bin/waybar";
      Restart = "on-failure";
    };
    Install = { WantedBy = [ "graphical-session.target" ]; };
  };

  systemd.user.services.cliphist-text = {
    Unit = { Description = "Cliphist Text Store"; };
    Service = {
      ExecStart = "${pkgs.wl-clipboard}/bin/wl-paste --type text --watch ${pkgs.cliphist}/bin/cliphist store";
      Restart = "on-failure";
    };
    Install = { WantedBy = [ "graphical-session.target" ]; };
  };

  systemd.user.services.cliphist-image = {
    Unit = { Description = "Cliphist Image Store"; };
    Service = {
      ExecStart = "${pkgs.wl-clipboard}/bin/wl-paste --type image --watch ${pkgs.cliphist}/bin/cliphist store";
      Restart = "on-failure";
    };
    Install = { WantedBy = [ "graphical-session.target" ]; };
  };
}
