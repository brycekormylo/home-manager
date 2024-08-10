{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./cmp/cmp.nix
    # ./cmp/coq.nix
    ./cmp/autopairs.nix
    ./cmp/surround.nix
    ./cmp/lspkind.nix
    # ./cmp/hardtime.nix

    ./debug/dap.nix

    ./files/alpha.nix
    ./files/harpoon.nix
    ./files/oil.nix
    ./files/treesitter.nix
    ./files/telescope.nix

    ./lsp/lspsaga.nix
    ./lsp/lsp.nix
    ./lsp/conform.nix
    ./lsp/lint.nix
    ./lsp/trouble.nix
    ./lsp/fidget.nix
    # ./lsp/none-ls.nix

    ./snip/luasnip.nix
    ./snip/undotree.nix
    ./snip/emmet.nix
    # ./snip/schemastore.nix

    ./ui/floaterm.nix
    # ./ui/barbar.nix
    ./ui/gitsigns.nix
    # ./ui/neo-tree.nix
    ./ui/indent-blankline.nix
    ./ui/fugitive.nix
    ./ui/illuminate.nix
    # ./ui/obsidian.nix

    ./binds.nix
    ./pkgs.nix
  ];

  programs.nixvim = {
    enable = true;
    viAlias = true;

    luaLoader.enable = true;

    globals = {
      mapleader = ",";

      # Disable default file manager
      loaded_netrw = "1";
      loaded_netrwPlugin = "1";
    };

    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    opts = {
      updatetime = 100;
      number = true;
      shiftwidth = 2;
      termguicolors = true;
      autoindent = true;
      smartindent = true;
      breakindent = true;
      scrolloff = 12;
    };

    colorschemes.gruvbox.enable = true;

    plugins = {
      lualine.enable = true;
      nix.enable = true;
    };

    extraPlugins = with pkgs.vimPlugins; [
      colorizer
      nvim-web-devicons
      vim-sneak
      # vim-gutentags
    ];
  };
}
