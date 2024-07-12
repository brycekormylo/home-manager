{
  inputs,
  pkgs,
  nix-colors,
  config,
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
  ];

  colorScheme = nix-colors.colorschemes.gruvbox-dark-soft;

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    gh
  ];

  services = {
    dunst = {
      enable = true;
      settings = {
        global = {
          width = 300;
          height = 300;
          offset = "30x30";
          origin = "top-right";
          transparency = 10;
          frame_color = "#${config.colorScheme.palette.base00}";
          font = "Mononoki Nerd Font";
        };

        urgency_normal = {
          background = "#${config.colorScheme.palette.base01}";
          foreground = "#${config.colorScheme.palette.base06}";
          timeout = 10;
        };
      };
    };
  };

  programs = {
    ranger = {
      enable = true;
      settings = {
        column_ratios = "1,3,4";
        colorscheme = "snow";
      };
      extraConfig = ''
        set tilde_in_titlebar true
        set vcs_aware true
        map <C-d> shell dragon -a -x %p
      '';
    };

    git = {
      enable = true;
      userName = "Bryce Kormylo";
      userEmail = "brycekormylo@outlook.com";
      extraConfig = {
        http.postBuffer = 157286400;
      };
    };

    kitty = {
      enable = true;
      settings = {
        foreground = "#${config.colorScheme.palette.base05}";
        background = "#${config.colorScheme.palette.base00}";
      };
    };
  };

  home.file = {};

  home.sessionVariables = {EDITOR = "nvim";};

  programs.home-manager.enable = true;
}
