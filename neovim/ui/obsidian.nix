{
  programs.nixvim.plugins.obsidian = {
    enable = true;
    settings = {
      ui.enable = false;
      completion = {
        min_chars = 2;
        nvim_cmp = true;
      };
      dir = "~/arc";
      disable_frontmatter = true;
      daily_notes = {
        folder = "notes/daily";
        date_format = "%Y-%m-%d";
        alias_format = "%B %-d, %Y";
      };
    };
  };
}
