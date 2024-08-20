{
  programs.nixvim.plugins = {
    indent-blankline = {
      enable = true;
      settings = {
        indent = {
          # char = "▎";
          char = "│";
        };
        scope = {
          enabled = true;
          show_start = false;
        };
        exclude = {
          buftypes = ["terminal" "nofile"];
          filetypes = [
            "help"
            "alpha"
            "dashboard"
            "neo-tree"
            "Trouble"
            "trouble"
            "lazy"
            "mason"
            "notify"
            "toggleterm"
            "lazyterm"
            "markdown"
            "obsidian"
          ];
        };
      };
    };
  };
}
