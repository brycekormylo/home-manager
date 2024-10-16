{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "better-escape.nvim";
        src = pkgs.fetchFromGitHub {
          owner = "max397574";
          repo = "better-escape.nvim";
          rev = "bb197e51a91a635deb88630813c3bfc284413697";
          hash = "sha256-Usizi6w5tLM28uxibL7vEdvC8SwFi24QFSttEfhB1oo=";
        };
      })
    ];
    extraConfigLua = ''
      require("better-escape").setup({
      	default_mappings = false,
      })
    '';
  };
}
