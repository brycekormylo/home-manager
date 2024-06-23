{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim

    ./ui/floaterm.nix
    ./ui/barbar.nix
    ./ui/gitsigns.nix
    ./ui/neo-tree.nix
    ./ui/indent-blankline.nix

    ./lsp/lspsaga.nix
    ./lsp/lsp.nix
    ./lsp/conform.nix
    ./lsp/trouble.nix
    ./lsp/fidget.nix
    ./lsp/none-ls.nix
    ./lsp/ext.nix

    ./files/treesitter.nix
    ./files/alpha.nix
    ./files/telescope.nix

    ./cmp/cmp.nix
    ./cmp/autopairs.nix

    ./snip/luasnip.nix

    ./binds.nix
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

    opts = {
      updatetime = 100;
      number = true;
      shiftwidth = 2;
      termguicolors = true;
      autoindent = true;
      smartindent = true;
      breakindent = true;
    };

    colorschemes.gruvbox.enable = true;

    plugins = {
      lualine.enable = true;
      oil.enable = true;
      nix.enable = true;
    };

    extraPlugins = with pkgs.vimPlugins; [
      vim-css-color
      nvim-web-devicons
      emmet-vim
    ];
  };
}
