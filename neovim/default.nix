{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./cmp/autopairs.nix
    ./cmp/cmp.nix
    ./cmp/hardtime.nix
    ./cmp/lspkind.nix
    ./cmp/surround.nix
    # ./cmp/tailwind-colorizer.nix
    ./cmp/wilder.nix

    # ./debug/dap.nix

    ./files/alpha.nix
    # ./files/grapple.nix
    ./files/harpoon.nix
    ./files/oil.nix
    # ./files/portal.nix
    ./files/snipe.nix
    ./files/flash.nix
    ./files/treesitter.nix
    ./files/telescope.nix

    ./git/diffview.nix

    ./lsp/conform.nix
    ./lsp/fidget.nix
    ./lsp/goto-preview.nix
    ./lsp/inc-rename.nix
    ./lsp/lint.nix
    ./lsp/lsp.nix
    # ./lsp/tailwind-tools.nix
    ./lsp/wrapping.nix

    # ./snip/emmet.nix
    ./snip/luasnip.nix
    ./snip/undotree.nix

    # ./ui/dressing.nix
    ./ui/encourage.nix
    ./ui/floaterm.nix
    ./ui/gitsigns.nix
    ./ui/indent-blankline.nix
    ./ui/illuminate.nix
    ./ui/lualine.nix
    ./ui/markview.nix
    ./ui/mini.nix
    # ./ui/noice.nix
    # ./ui/numbertoggle.nix
    # ./ui/obsidian.nix
    # ./ui/rainbow-delimiters.nix
    ./ui/satellite.nix
    ./ui/tiny-code-action.nix
    ./ui/tiny-inline-diagnostic.nix

    ./utils/aerial.nix
    ./utils/ccc.nix
    ./utils/early-retirement.nix
    # ./utils/kulala.nix
    ./utils/mkdnflow.nix
    # ./utils/overseer.nix
    # ./utils/reverb.nix
    # ./utils/tsc.nix

    ./binds.nix
    ./pkgs.nix
    ./colorscheme.nix
  ];

  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    luaLoader.enable = true;

    globals = {
      mapleader = " ";

      # Disable default file manager
      loaded_netrw = "1";
      loaded_netrwPlugin = "1";

      backupdir = "~/.vim/backup//";
      directory = "~/.vim/swap//";
      undodir = "~/.vim/undo//";
    };

    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    diagnostics = {
      virtual_lines = {
        only_current_line = false;
      };
      virtual_text = false;
    };

    opts = {
      mouse = "";
      updatetime = 100;
      number = true;
      relativenumber = true;
      shiftwidth = 4;
      textwidth = 80;
      linebreak = true;
      # columns = 80;
      wrap = true;
      wrapmargin = 0;
      termguicolors = true;
      autoindent = false;
      smartindent = false;
      breakindent = false;
      scrolloff = 24;
      conceallevel = 2;
      signcolumn = "yes";
    };

    extraPlugins = with pkgs.vimPlugins; [
      colorizer
      nvim-web-devicons
      plenary-nvim
      # vim-gutentags
    ];
  };
}
