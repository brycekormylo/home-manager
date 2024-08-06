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
        key = ";";
        action = ":";
      }
      {
        key = "<leader>e";
        action = "<cmd>:Neotree action=reveal focus<CR>";
      }
      {
        key = "<leader>E";
        action = "<cmd>:Neotree action=close<CR>";
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
        mode = ["n" "v"];
        key = "<leader>cf";
        action = "<cmd>lua vim.lsp.buf.format()<cr>";
        options = {
          silent = true;
          desc = "Format";
        };
      }
    ];
  };
}
