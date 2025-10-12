{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    settings = {
      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = [
        "desc:Samsung Electric Company SAMSUNG 0x00000001, preferred, auto-left, 1" # TV
        "desc:Acer Technologies SA271 0x2167AD74, preferred, auto-right, 1" # Regular monitor
        "desc:LG Electronics LG ULTRAGEAR 0x000593BD, preferred, 2560x0, 1" # Gaming monitor 
        "desc:Samsung Electric Company LS32AG55x H1AK500000, preferred, 0x0, 1" # Gaming monitor (default)
        # "desc:Samsung Electric Company LS32AG55x H1AK500000, preferred, auto-left, 1, transform, 3" # Auxillary monitor (Vertical setup)
        # "desc:LG Electronics webOS TV 0x01010101, preferred, auto, 1, mirror, DP-1" # TV
        "desc:LG Electronics webOS TV 0x01010101, disable" # TV (off)
        ",preferred, auto,1" # default 
      ];
      "$mainMod" = "SUPER";
      "$terminal" = "ghostty";
      "$fileManager" = "$terminal -e sh -c 'ranger'";
      "$menu" = "wofi";
      "$browser" = "librewolf";

      exec-once = [
        "waybar"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
      ];

      general = {
        gaps_in = 0;
        gaps_out = 0;

        border_size = 5;

        "col.active_border" = "rgba(9400d3ff) rgba(000000ff) rgba(689d35ff) 135deg";
        "col.inactive_border" = "rgba(000000ff)";

        resize_on_border = true;

        allow_tearing = false;
        layout = "master";
      };

      decoration = {
        rounding = 0;

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
        pseudotile = true;
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

      windowrulev2 = [
        "bordersize 0, floating:0, onworkspace:w[t1]"

        "float,class:(mpv)|(imv)|(showmethekey-gtk)"
        "move 990 60,size 900 170,pin,noinitialfocus,class:(showmethekey-gtk)"
        "noborder,nofocus,class:(showmethekey-gtk)"

        "workspace 3,class:(obsidian)"
        "workspace 3,class:(zathura)"
        "workspace 4,class:(com.obsproject.Studio)"
        "workspace 5,class:(telegram)"
        "workspace 5,class:(vesktop)"
        "workspace 6,class:(teams-for-linux)"

        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"

        "opacity 0.0 override, class:^(xwaylandvideobridge)$"
        "noanim, class:^(xwaylandvideobridge)$"
        "noinitialfocus, class:^(xwaylandvideobridge)$"
        "maxsize 1 1, class:^(xwaylandvideobridge)$"
        "noblur, class:^(xwaylandvideobridge)$"
        "nofocus, class:^(xwaylandvideobridge)$"
      ];

      workspace = [
        "w[tv1], gapsout:0, gapsin:0"
        "f[1], gapsout:0, gapsin:0"
      ];
    };
  };
}
