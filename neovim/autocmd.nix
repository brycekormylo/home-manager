{
  programs.nixvim = {
    autocmd = [
      {
        command = "<cmd>set norelativenumber<cr>";
        event = ["InsertEnter"];
        pattern = ["*"];
      }
      {
        command = "<cmd>set relativenumber<cr>";
        event = ["InsertLeave"];
        pattern = ["*"];
      }
    ];
  };
}
