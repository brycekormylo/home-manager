{
  programs.nixvim.plugins.obsidian = {
    enable = true;
    settings = {
      ui.enable = false;
      completion = {
        min_chars = 2;
        nvim_cmp = true;
      };
      new_notes_location = "current_dir";
      workspaces = [
        {
          name = "arc";
          path = "~/arc";
        }
      ];
    };
  };
}
