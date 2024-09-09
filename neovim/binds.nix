{
  programs.nixvim = {
    plugins.comment = {
      enable = true;
      settings = {
        opleader.line = "<C-/>";
        toggler.line = "<C-/>";
      };
    };

    keymaps = [
      # {
      #   key = ";";
      #   action = ":";
      # }
      {
        key = "<leader>w";
        action = "<cmd>:w<cr>";
      }
      {
        key = "<leader>z";
        action = "<cmd>:UndotreeToggle<cr>";
      }
      # {
      #   key = "<leader>e";
      #   action = "<cmd>Grapple toggle_tags<CR>";
      # }
      # {
      #   key = "<leader>E";
      #   action = "<cmd>Grapple toggle<CR>";
      # }
      {
        key = "<leader>A";
        action = "<cmd>:Alpha<cr>";
      }
      {
        key = "<leader>nc";
        action = "<cmd>:CccPick<cr>";
      }
      {
        key = "<leader>nt";
        action = "<cmd>:TSC<cr>";
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
      {
        mode = ["n" "v"];
        key = "-";
        action = "<cmd>:Oil --float<cr>";
        options = {desc = "Open parent directory";};
      }
      {
        mode = ["n" "v"];
        key = "<leader>-";
        action = "<cmd>:Oil --float<cr>";
        options = {desc = "Open parent directory";};
      }
    ];
  };
}
