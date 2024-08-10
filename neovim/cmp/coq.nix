{
  programs.nixvim.plugins = {
    coq-nvim = {
      enable = true;
      settings = {
        auto_start = "shut-up";
      };
      installArtifacts = true;
    };
  };
}
