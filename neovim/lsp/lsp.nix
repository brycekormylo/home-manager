{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      lsp-format.enable = false;
      lsp-status.enable = true;
      typescript-tools.enable = true;
      rust-tools.enable = true;
      lsp = {
        enable = true;
        servers = {
          nil-ls.enable = true;
          cssls.enable = true;
          tailwindcss.enable = true;
          html.enable = true;
          # tsserver.enable = true;
          # emmet_ls.enable = true;
          dockerls.enable = true;
          jsonls.enable = true;
          lua-ls.enable = true;
          # marksman.enable = true;
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
    extraPlugins = with pkgs.vimPlugins; [nvim-lspconfig];
    extraConfigLua = ''
      local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

      capabilities.workspace = {
      	didChangeWatchedFiles = {
      		dynamicRegistration = true,
      	},
      }

      require("lspconfig").markdown_oxide.setup({
      	capabilities = capabilities,
      })
    '';
  };
}
