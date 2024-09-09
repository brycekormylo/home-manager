{
  programs.nixvim.plugins.hardtime = {
    enable = true;
    enabled = true;
    disableMouse = true;
    disabledFiletypes = ["Oil" "markdown"];
    hint = true;
    maxCount = 4;
    maxTime = 1000;
    restrictionMode = "hint";
    # restrictionMode = "block";
    restrictedKeys = {
      "h" = ["n" "x"];
      "j" = ["n" "x"];
      "k" = ["n" "x"];
      "l" = ["n" "x"];
      "-" = ["n" "x"];
      "+" = ["n" "x"];
      "gj" = ["n" "x"];
      "gk" = ["n" "x"];
      "<CR>" = ["n" "x"];
      "<C-M>" = ["n" "x"];
      "<C-N>" = ["n" "x"];
      "<C-P>" = ["n" "x"];
    };
  };
}
