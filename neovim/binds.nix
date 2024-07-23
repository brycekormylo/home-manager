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
        opleader.line = "<C-/>";
        toggler.line = "<C-/>";
      };
    };

    keymaps = [
      {
        key = "<leader>e";
        action = "<cmd>:Neotree action=reveal focus<CR>";
      }
      {
        key = "<leader>E";
        action = "<cmd>:Neotree action=toggle<CR>";
      }
      {
        key = "<leader>A";
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
    ];
  };
}
