{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 1000;
    };
    notifyOnError = true;
    formattersByFt = {
      lua = ["stylua"];
      javascript = ["prettierd" "rustywind"];
      typescript = ["prettierd" "rustywind"];
      javascriptreact = ["prettierd" "rustywind"];
      typescriptreact = ["prettierd" "rustywind"];
      json = [["prettierd" "prettier"]];
      # graphql = [["prettierd" "prettier"]];
      markdown = ["markdownfmt"]; # Inserts / before every bracket
      html = [["prettierd" "prettier"]];
      css = [["prettierd" "prettier"]];
      rust = ["rustfmt"];
      nix = ["alejandra" "injected"];
      "*" = ["injected"];
    };
  };
}
