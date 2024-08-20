{
  programs.nixvim = {
    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
          formatting = {fields = ["abbr" "kind" "menu"];};
          experimental = {
            native_menu = false;
            ghost_text = false;
          };
          performance = {
            debounce = 60;
            fetchingTimeout = 200;
            maxViewEntries = 12;
            throttle = 5;
          };
          window = {
            completion = {border = "none";};
            documentation = {border = "none";};
          };
          mapping = {
            "<C-d>" = "cmp.mapping.scroll_docs(-4)";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<C-Space>" = "cmp.mapping.complete()";
            "<C-e>" = "cmp.mapping.close()";
            "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
            "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
            "<CR>" = "cmp.mapping.confirm({ select = true })";
          };
          sources = [
            {name = "mkdnflow";}
            {
              name = "nvim_lsp";
              option = {
                markdown_oxide = {
                  keyword_pattern = ''
                    [[\(\k\| \|\/\|#\)\+]]
                  '';
                };
              };
            }
            {
              name = "luasnip";
              keywordLength = 3;
            }
            {name = "treesitter";}
            {
              name = "buffer";
              # Words from other open buffers can also be suggested.
              option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
              keywordLength = 3;
            }
            {name = "cmp_tabby";}
            {
              name = "path";
              keywordLength = 2;
            }
            {name = "nvim_lua";}
          ];

          sorting = {
            comparators = [
              "require('cmp.config.compare').exact"
              "require('cmp.config.compare').offset"
              "require('cmp.config.compare').score"
              "require('cmp.config.compare').recently_used"
              "require('cmp.config.compare').kind"
              "require('cmp.config.compare').locality"
              "require('cmp.config.compare').length"
              "require('cmp.config.compare').order"
            ];
          };
        };
      };
      # cmp-nvim-lsp.enable = true;
      # cmp-nvim-lua.enable = true;
      # cmp-treesitter.enable = true;
      # cmp-tabby.enable = true;
      # cmp-buffer.enable = true;
      # cmp-path.enable = true;
      # cmp_luasnip.enable = true;
      # cmp-cmdline.enable = true;
    };
  };
}
