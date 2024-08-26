{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "vim-be-good";
        src = pkgs.fetchFromGitHub {
          owner = "ThePrimeagen";
          repo = "vim-be-good.nvim";
          rev = "4fa57b7957715c91326fcead58c1fa898b9b3625";
          hash = "sha256-XVFq3Gb4C95Y0NYKk08ZjZaGLVF6ayPicIAccba+VRs=";
        };
      })
    ];
    extraConfigLua = ''
      require("vim-be-good").setup({})
    '';
  };
}
