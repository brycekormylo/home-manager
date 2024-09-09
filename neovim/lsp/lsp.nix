{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      lsp-format.enable = false;
      lsp-status.enable = true;
      typescript-tools.enable = true;
      nvim-jdtls = {
        enable = true;
        data = "/home/bryce/.cache/jtdls/workspace/";
      };
      rust-tools.enable = true;
      lsp = {
        enable = true;
        servers = {
          nil-ls = {
            enable = true;
          };
          cssls = {
            enable = true;
            settings = {
              css = {
                lint = {
                  unknownAtRules = "ignore";
                };
              };
            };
          };
          tailwindcss.enable = true;
          html.enable = true;
          # tsserver.enable = true;
          # emmet_ls.enable = true;
          # dockerls.enable = true;
          jsonls.enable = true;
          lua-ls.enable = true;
          jdt-language-server.enable = true;
          # marksman.enable = true;
          # bashls.enable = true;
          # clangd.enable = true;
          rust-analyzer = {
            enable = true;
            installRustc = true;
            installCargo = true;
            settings = {
              rust-analyzer = {
                cargo = {
                  allFeatures = true;
                };
              };
            };
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

      local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
      for type, icon in pairs(signs) do
      	local hl = "DiagnosticSign" .. type
      	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end
    '';
  };
}
