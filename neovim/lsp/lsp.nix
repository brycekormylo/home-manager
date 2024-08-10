{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      lsp-format.enable = true;
      typescript-tools.enable = true;
      rust-tools.enable = true;
      lsp = {
        enable = true;
        # preConfig = ''
        #   local coq = require('coq');
        # '';
        # setupWrappers = [(s: ''coq.lsp_ensure_capabilities(${s})'')];
        servers = {
          nixd.enable = true;
          cssls.enable = true;
          tailwindcss.enable = true;
          html.enable = true;
          # emmet_ls.enable = true;
          dockerls.enable = true;
          jsonls.enable = true;
          lua-ls.enable = true;
          marksman.enable = true;
          bashls.enable = true;
          clangd.enable = true;
          csharp-ls.enable = true;
          rust-analyzer = {
            enable = true;
            installRustc = true;
            installCargo = true;
          };
        };
      };
    };
    extraPlugins = with pkgs.vimPlugins; [
      nvim-lspconfig
    ];
  };
}
