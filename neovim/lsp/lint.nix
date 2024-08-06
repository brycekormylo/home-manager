{
  programs.nixvim.plugins.lint = {
    enable = true;
    lintersByFt = {
      nix = ["nix"];
      text = ["vale"];
      json = ["jsonlint"];
      javascript = ["eslint_d"];
      typescript = ["eslint_d"];
      javascriptreact = ["eslint_d"];
      typescriptreact = ["eslint_d"];
      markdown = ["vale"];
      rst = ["vale"];
      ruby = ["ruby"];
      dockerfile = ["hadolint"];
    };
  };
  programs.nixvim.keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>ll";
      action = "<cmd>buf lint.tryLint()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }
  ];
}
