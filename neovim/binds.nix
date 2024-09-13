{
  programs.nixvim = {
    plugins.comment = {
      enable = true;
      settings = {
        opleader.line = "<C-/>";
        toggler.line = "<C-/>";
      };
    };

    # General keymaps only
    keymaps = [
      {
        key = "<leader>w";
        action = "<cmd>:w<cr>";
      }
      {
        key = "<leader>rjt";
        action = "<cmd>require('java').test.run_current_class()<CR>";
        options = {
          desc = "Run Java Test";
        };
      }
      {
        key = "<leader>djt";
        action = "<cmd>require('java').test.debug_current_class()<CR>";
        options = {
          desc = "Debug Java Test";
        };
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
