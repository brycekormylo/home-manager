{ pkgs, ... }: {
  programs.nixvim = {
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "glow";
        src = pkgs.fetchFromGitHub {
          owner = "ellisonleao";
          repo = "glow.nvim";
          rev = "238070a686c1da3bccccf1079700eb4b5e19aea4";
          hash = "sha256-GsNcASzVvY0066kak2nvUY5luzanoBclqcUOsODww8g=";
        };
      })
    ];
    extraConfigLua = ''
      require("glow").setup({})
    '';
  };
}
