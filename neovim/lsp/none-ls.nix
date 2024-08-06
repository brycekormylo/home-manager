{
  programs.nixvim.plugins.none-ls = {
    enable = false;
    enableLspFormat = false;
    updateInInsert = false;
    sources = {
      code_actions = {
        gitsigns.enable = true;
        statix.enable = true;
      };
      diagnostics = {
        statix.enable = true;
        yamllint.enable = true;
        semgrep.enable = true;
      };
      formatting = {
        alejandra.enable = true;
        black.enable = true;
        prettier = {
          enable = true;
          disableTsServerFormatter = true;
        };
        prettierd.enable = true;
        rustywind.enable = true;
        stylua.enable = true;
        yamlfmt.enable = true;
      };
    };
  };
  programs.nixvim.keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>cf";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }
  ];
}
