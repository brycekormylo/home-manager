{
  inputs,
  pkgs,
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

    ./colorscheme.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    gh
    docker
    neovide

    # EDU
    mars-mips
    zulu
    maven
    gradle
    bk
    pandoc
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;

  # Update Plugin Command
  # cd .config/home-manager && nix flake update && home-manager switch
}
