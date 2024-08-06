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
    treesitter-context = {
      enable = true;
    };
    treesitter-textobjects = {
      enable = true;
      lspInterop.enable = true;
    };
  };
}
