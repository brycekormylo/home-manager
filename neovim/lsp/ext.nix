{pkgs, ...}: {
  programs.nixvim = {
    plugins.lspkind.enable = true;
    extraPlugins = with pkgs.vimPlugins; [nvim-lspconfig];
  };
}
