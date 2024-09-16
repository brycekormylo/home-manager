{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lsp_fallback = true;
        timeout_ms = 1000;
      };
      notify_on_error = true;
      formatters_by_ft = {
        lua = ["stylua"];
        java = ["google-java-format"];
        javascript = ["prettierd" "rustywind"];
        typescript = ["prettierd" "rustywind"];
        javascriptreact = ["prettierd" "rustywind"];
        typescriptreact = ["prettierd" "rustywind"];
        json = [["prettierd" "prettier"]];
        # markdown = ["markdownfmt"]; # mdformat inserts / before every bracket
        html = [["prettierd" "prettier"]];
        css = [["prettierd" "prettier"]];
        rust = ["rustfmt"];
        nix = ["alejandra" "injected"];
        "*" = ["injected"];
      };
    };
  };
}
