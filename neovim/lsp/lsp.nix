{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      lsp-format.enable = false;
      lsp-status.enable = true;
      # typescript-tools.enable = true;
      nvim-jdtls = {
        enable = true;
        data = "/home/bryce/.cache/jtdls/workspace/";
      };
      rust-tools.enable = true;
      lsp = {
        enable = true;
        servers = {
          nil_ls = {
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
          bashls.enable = true;
          tailwindcss.enable = true;
          html.enable = true;
          denols.enable = true;
          # emmet_ls.enable = true;
          # dockerls.enable = true;
          jsonls.enable = true;
          lua_ls.enable = true;
          marksman.enable = true;
          yamlls.enable = true;
          clangd.enable = true;
          rust_analyzer = {
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

      -- require("lspconfig").markdown_oxide.setup({
      -- 	capabilities = capabilities,
      -- })
      local nvim_lsp = require("lspconfig")

      nvim_lsp.asm_lsp.setup({
      	capabilities = capabilities,
      })

      nvim_lsp.denols.setup({
      	on_attach = on_attach,
      	root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
      })

      nvim_lsp.ts_ls.setup({
      	on_attach = on_attach,
      	root_dir = nvim_lsp.util.root_pattern("package.json"),
      	single_file_support = false,
      })

      local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
      for type, icon in pairs(signs) do
      	local hl = "DiagnosticSign" .. type
      	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end
    '';
  };
}
