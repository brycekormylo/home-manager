{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "fine-cmdline";
        src = pkgs.fetchFromGitHub {
          owner = "vonheikemen";
          repo = "fine-cmdline.nvim";
          rev = "aec9efebf6f4606a5204d49ffa3ce2eeb7e08a3e";
          hash = "sha256-SMmOzDhkRBBPCuXXZFUxog6YWRQ2tdlJuJGjYlyNTgk=";
        };
      })
    ];
    extraConfigLua = ''
      require("fine-cmdline").setup({
      	cmdline = {
      		enable_keymaps = true,
      		smart_history = true,
      		prompt = ":",
      	},
      	popup = {
      		position = {
      			row = "10%",
      			col = "50%",
      		},
      		size = {
      			width = "40%",
      		},
      		border = {
      			style = "rounded",
      		},
      		win_options = {
      			winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      		},
      	},
      	hooks = {
      		after_mount = function(input)
      			vim.keymap.set("i", "<Esc>", "<cmd>close<cr>", { buffer = input.bufnr })
      		end,
      	},
      })
    '';
    keymaps = [
      {
        key = ":";
        action = "<cmd>FineCmdline<cr>";
        options = {
          noremap = true;
        };
      }
    ];
  };
}
