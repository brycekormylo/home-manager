{pkgs, ...}: {
  home.packages = with pkgs; [
    bottles
    wine
    winetricks
  ];
}
