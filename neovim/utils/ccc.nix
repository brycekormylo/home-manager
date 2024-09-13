{
  programs.nixvim = {
    plugins = {
      ccc.enable = true;
    };
    keymaps = [
      {
        key = "<leader>nc";
        action = "<cmd>:CccPick<cr>";
      }
    ];
  };
}
