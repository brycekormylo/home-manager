{config, ...}: {
  services = {
    dunst = {
      enable = true;
      settings = {
        global = {
          width = 300;
          height = 300;
          offset = "30x30";
          origin = "top-right";
          transparency = 10;
          frame_color = "#${config.colorScheme.palette.base00}";
          font = "Mononoki Nerd Font";
        };

        urgency_normal = {
          background = "#${config.colorScheme.palette.base01}";
          foreground = "#${config.colorScheme.palette.base06}";
          timeout = 10;
        };
      };
    };
  };
}
