{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "nvim-numbertoggle";
        src = pkgs.fetchFromGitHub {
          owner = "sitiom";
          repo = "nvim-numbertoggle";
          rev = "c5827153f8a955886f1b38eaea6998c067d2992f";
          hash = "sha256-IkJ9KRrikJZvijjfqgnJ2/QYAuF8KX2/zFX1oUbE3aI=";
        };
      })
    ];
  };
}
