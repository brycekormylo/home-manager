{...}: {
  programs = {
    git = {
      enable = true;
      userName = "Bryce Kormylo";
      userEmail = "brycekormylo@outlook.com";
      extraConfig = {
        http.postBuffer = 157286400;
      };
    };
  };
}
