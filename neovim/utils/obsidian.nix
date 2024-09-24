{
  programs.nixvim = {
    plugins.obsidian = {
      enable = true;
      settings = {
        ui.enable = false;
        completion = {
          min_chars = 2;
          nvim_cmp = true;
        };
        dir = "~/psi";
        disable_frontmatter = false;
        daily_notes = {
          folder = "notes/daily";
          date_format = "%Y-%m-%d";
          alias_format = "%B %-d, %Y";
          default_tags = ["daily" "notes"];
          template = null;
        };
      };
    };
    keymaps = [
      {
        key = "<leader>nn";
        action = ":ObsidianNew";
      }
      {
        key = "<leader>nd";
        action = "<cmd>:ObsidianDailies<cr>";
      }
    ];
  };
}
