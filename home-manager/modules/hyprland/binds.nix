{ ... }:
let
  workspaces = [1 2 3 4 5 6 7 8 9 10];
  workspaceBinds = map (i:
    let
      key = if i == 10 then "0" else toString i;
    in
    "$mainMod, ${key}, workspace, ${toString i}"
  ) workspaces;
  moveBinds = map (i:
    let
      key = if i == 10 then "0" else toString i;
    in
    "$mainMod SHIFT, ${key}, movetoworkspacesilent, ${toString i}"
  ) workspaces;
in
{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mainMod, Return, exec, $terminal"
      "$mainMod, C, killactive,"
      "$mainMod SHIFT, Q, exit,"
      "$mainMod,       R, exec, $fileManager"
      "$mainMod,       B, exec, $browser"
      "$mainMod,       F, togglefloating,"
      "$mainMod,       SPACE, exec, $menu --show drun"
      "$mainMod,       P, pin,"
      "$mainMod,       E, exec, bemoji -cn"
      "$mainMod,       V, exec, cliphist list | $menu --dmenu | cliphist decode | wl-copy"
      "$mainMod,       W, exec, pkill -SIGUSR2 waybar"
      "$mainMod SHIFT, W, exec, pkill -SIGUSR1 waybar"
      "$mainMod,       L, exec, loginctl lock-session"
      "$mainMod,       P, exec, hyprpicker -an"
      "$mainMod,       N, exec, swaync-client -t"
      ", Print, exec, grimblast --notify --freeze copysave area"

      # Moving focus
      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up, movefocus, u"
      "$mainMod, down, movefocus, d"

      # Moving windows
      "$mainMod SHIFT, left,  swapwindow, l"
      "$mainMod SHIFT, right, swapwindow, r"
      "$mainMod SHIFT, up,    swapwindow, u"
      "$mainMod SHIFT, down,  swapwindow, d"

      # Resizeing windows                   X  Y
      "$mainMod CTRL, left,  resizeactive, -60 0"
      "$mainMod CTRL, right, resizeactive,  60 0"
      "$mainMod CTRL, up,    resizeactive,  0 -60"
      "$mainMod CTRL, down,  resizeactive,  0  60"
    ] ++ workspaceBinds ++ moveBinds ++ [
      # Scratchpad
      "$mainMod,       S, togglespecialworkspace,  magic"
      "$mainMod SHIFT, S, movetoworkspace, special:magic"
    ];

    # Move/resize windows with mainMod + LMB/RMB and dragging
    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    # Laptop multimedia keys for volume and LCD brightness
    bindel = [
      ",XF86AudioRaiseVolume,  exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume,  exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute,         exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute,      exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      "$mainMod, bracketright, exec, brightnessctl s 10%+"
      "$mainMod, bracketleft,  exec, brightnessctl s 10%-"
    ];

    # Audio playback
    bindl = [
      ", XF86AudioNext,  exec, playerctl next"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPlay,  exec, playerctl play-pause"
      ", XF86AudioPrev,  exec, playerctl previous"
    ];
  };
}
