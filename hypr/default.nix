{config, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.variables = ["--all"];

    settings = {
      input = {
        kb_layout = "us";
        kb_options = "caps:swapescape";
        touchpad.natural_scroll = true;
        follow_mouse = 1;
        sensitivity = 0.6;
      };

      general = {
        gaps_in = 0;
        gaps_out = 0;
        border_size = 1;
        layout = "dwindle";
        allow_tearing = false;
        "col.active_border" = "rgb(${config.colorScheme.palette.base04})";
        "col.inactive_border" = "rgb(${config.colorScheme.palette.base02})";
      };

      decoration = {
        rounding = 2;
      };

      animations = {
        enabled = false;
      };

      dwindle = {
        pseudotile = "yes";
        preserve_split = true;
        force_split = 2;
        no_gaps_when_only = 1;
      };

      gestures = {
        workspace_swipe = "on";
      };

      misc = {
        force_default_wallpaper = 0;
        vfr = 0;
      };

      # binds = {
      #   workspace_center_on = 0;
      # };

      "monitor" = ",preferred,auto,auto";
      "exec-once" = "dbus-update-activation-environment & --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP & waypaper --restore & ags & firefox & ivpn connect --last";
      # "exec" = "ags";
      "$mod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "kitty ranger --confdir ~/.config/ranger";
      "$menu" = "rofi -show drun -show-icons";
      "$sysMonitor" = "kitty gotop";
      "$notes" = "kitty --single-instance -d ~/psi vi .";
      "$browser" = "firefox";
      "$config" = "kitty --single-instance -d ~/.config/home-manager vi .";
      "windowrulev2" = "suppressevent maximize, class:.*";
      "workspace" = "special:magic, on-created-empty: $config ";
      # Add command to cycle power management

      bind = [
        "$mod, Q, killactive,"
        "$mod, T, exec, $terminal"
        "$mod, M, exec, $sysMonitor"
        "$mod, W, exec, $browser"
        "$mod, E, exec, $fileManager"
        "$mod, F, exec, $menu"
        "$mod, N, exec, $notes"
        "$mod, C, exec, $config"

        # "$mod, P, pseudo"
        "$mod, X, togglesplit"
        "$mod, P, togglefloating,"
        "$mod, R, layoutmsg, swapsplit"
        "$mod, Tab, cyclenext"

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

        # "$mod, N, togglespecialworkspace, notes"
        # "$mod SHIFT, N, movetoworkspace, special:notes"
        #
        # "$mod, C, togglespecialworkspace, config"
        # "$mod SHIFT, C, movetoworkspace, special:config"
      ];
      binde = [
        ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%-"
        ", XF86AudioMute, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 0%"
      ];
      bindm = [
        "$mod, mouse272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };

    # extraConfig = ''
    #   workspace = special:notes, on-created-empty: $notes
    #   workspace = special:config, on-created-empty: $config
    # '';
  };
}
