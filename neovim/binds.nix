{
  programs.nixvim = {
    plugins.which-key = {
      enable = true;
      icons = {
        separator = "";
        group = "";
      };
    };

    plugins.comment = {
      enable = true;
      settings = {
        opleader.line = "<leader>b";
        toggler.line = "<leader>b";
      };
    };

    keymaps = [
      {
        key = "<leader>e";
        action = "<cmd>:Neotree action=focus reveal toggle<CR>";
      }
      {
        key = "<leader>a";
        action = "<cmd>:Alpha<cr>";
      }
      {
        key = "<leader>w";
        action = "<cmd>:W<cr>";
      }
      {
        key = "<leader>`";
        action = "<cmd>:BufferCloseAllButCurrentOrPinned<cr>";
      }
      {
        key = "<leader>d";
        action = "rustywind write .<cr>";
      }
    ];
  };
}
