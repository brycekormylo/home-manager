{config, ...}: {
  programs.kitty = {
    enable = true;
    # theme = "Gruvbox Dark Soft";
    settings = {
      background = "#${config.colorScheme.palette.base00}";
      foreground = "#${config.colorScheme.palette.base05}";
      selection_background = "#${config.colorScheme.palette.base02}";
      selection_foreground = "none";
      cursor = "#${config.colorScheme.palette.base08}";
      cursor_text_color = "#000000";
      color2 = "#${config.colorScheme.palette.base0D}";
      color10 = "#${config.colorScheme.palette.base0D}";
      color6 = "#${config.colorScheme.palette.base0E}";
      color14 = "#${config.colorScheme.palette.base0E}";
    };
  };
}
