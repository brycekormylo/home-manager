{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.variables = ["--all"];
    settings = {
      input = {
        kb_layout = "us";
        touchpad.natural_scroll = "yes";
        follow_mouse = 1;
        sensitivity = 0.6;
      };
      general = {
        gaps_in = 1;
        gaps_out = 2;
        border_size = 1;
        layout = "dwindle";
        allow_tearing = false;
      };
      decoration = {
        rounding = 4;
      };
      animations = {
        enabled = "yes";
      };
      dwindle = {
        pseudotile = "yes";
        preserve_split = "yes";
      };
      master = {
        new_is_master = true;
      };
      gestures = {
        workspace_swipe = "on";
      };
      misc = {
        force_default_wallpaper = 0;
      };
      binds = {
        workspace_center_on = 1;
      };
      "monitor" = ",preferred,auto,auto";
      "exec-once" = "waypaper --restore & ags & firefox";
      "$mod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "kitty ranger --confdir ~/.config/ranger";
      "$menu" = "rofi -show drun -show-icons";
      "$sysMonitor" = "gotop";
      "$browser" = "firefox";
      "windowrulev2" = "suppressevent maximize, class:.*";
      bind = [
        "$mod, T, exec, $terminal"
        "$mod, Q, killactive,"
        "$mod, M, exec, $sysMonitor"
        "$mod, F, exec, $fileManager"
        "$mod, V, togglefloating,"
        "$mod, E, exec, $menu"
        "$mod, P, pseudo"
        "$mod, J, togglesplit"
        "$mod, W, exec, $browser"

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"

        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"

        "$mod, S, togglespecialworkspace, magic"
        "$mod SHIFT, S, movetoworkspace, special:magic"
      ];
      binde = [
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"
      ];
      bindl = [
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ];
      bindm = [
        "$mod, mouse272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };
  };
}
