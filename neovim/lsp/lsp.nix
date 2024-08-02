{
  programs.nixvim.plugins = {
    lsp = {
      enable = true;

      servers = {
        nil_ls.enable = true;
        tsserver.enable = true;
        cssls.enable = true;
        tailwindcss.enable = true;
        html.enable = true;
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
    lsp-format.enable = true;
    typescript-tools.enable = true;
  };
}
