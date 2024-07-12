{...}: {
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
  };
}
