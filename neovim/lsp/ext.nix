{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [lspkind-nvim nvim-lspconfig];
  };
}
