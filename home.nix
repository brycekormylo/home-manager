{
  inputs,
  pkgs,
  nix-colors,
  ...
}: {
  home = {
    username = "bryce";
    homeDirectory = "/home/bryce";
    stateVersion = "23.11";
  };

  imports = [
    inputs.ags.homeManagerModules.default
    inputs.nix-colors.homeManagerModules.default

    ./hypr
    ./ags
    ./neovim
    ./dunst
    ./ranger
    ./kitty
    ./git
  ];

  colorScheme = nix-colors.colorschemes.gruvbox-dark-soft;

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    gh
    docker
  ];

  home.sessionVariables = {EDITOR = "nvim";};

  programs.home-manager.enable = true;
}
