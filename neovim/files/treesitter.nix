{
  programs.nixvim.plugins = {
    ts-autotag.enable = true;
    hmts.enable = true;
    treesitter = {
      enable = true;
      nixvimInjections = true;
      folding = false;
      indent = true;
    };
    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        clearOnCursorMove = false;
      };
    };
  };
}

# extraConfigLua = ''
#   require('nvim-ts-autotag').setup({
#     opts = {
#       enable_close = true, 
#       enable_rename = true, 
#       enable_close_on_slash = false
#     },
#   })
# '';
