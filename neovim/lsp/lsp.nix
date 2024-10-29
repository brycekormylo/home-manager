{
  inputs,
  pkgs,
  ...
}: {
  home.sessionVariables = {
    NIXD_FLAGS = "--inlay-hints=true";
  };

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
          # nixd = {
          #   enable = true;
          #   cmd = ["nixd"];
          #   settings = {
          #     formatting.command = ["nixfmt"];
          #     nixpkgs = {
          #       expr = "import <nixpkgs> { }";
          #     };
          #     options = {
          #       home-manager = {
          #         expr = "(import <home-manager/modules> { configuration =
          #           ~/.config/home-manager/home.nix; pkgs = import <nixpkgs> {};
          #         }).options";
          #       };
          #     };
          #   };
          # };

          # emmet_ls.enable = true;
          denols.enable = true;
          dockerls.enable = true;
          html.enable = true;
          jsonls.enable = true;
          tailwindcss.enable = true;
          ts_ls.enable = true;
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

          asm_lsp.enable = true;
          bashls.enable = true;
          clangd.enable = true;
          lua_ls.enable = true;
          yamlls.enable = true;

          marksman.enable = true;
          # markdown_oxide.enable = true;
          typos_lsp = {
            enable = true;
            filetypes = ["markdown" "md"];
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

      local nvim_lsp = require("lspconfig")

      nvim_lsp.nixd.setup({
      	cmd = { "nixd" },
      	settings = {
      		nixd = {
      			nixpkgs = {
      				expr = "import <nixpkgs> { }",
      			},
      			formatting = {
      				command = { "alejandra" },
      			},
      			-- options = {
      			-- 	nixos = {
      			-- 		expr = "let flake = builtins.getFlake(toString ./.); in flake.nixosConfigurations.pathfinder.options",
      			-- 	},
      			-- 	home_manager = {
      			-- 		expr = "let flake = builtins.getFlake(toString ./.); in flake.homeConfigurations.pathfinder.options",
      			-- 	},
      			-- },
      		},
      	},
      })

      -- Allows use of deno without removing npm
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
