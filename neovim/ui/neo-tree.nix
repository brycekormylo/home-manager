{
  programs.nixvim.plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = false;
    enableRefreshOnWrite = true;
    window = {
      width = 28;
      autoExpandWidth = true;
    };
  };
}
