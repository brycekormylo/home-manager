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
      graphql = [["prettierd" "prettier"]];
      markdown = [["prettierd" "prettier"]];
      html = [["prettierd" "prettier"]];
      css = [["prettierd" "prettier"]];
      nix = ["alejandra"];
    };
  };
}
