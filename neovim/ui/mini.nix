{
  programs.nixvim = {
    plugins.mini = {
      enable = true;
      modules.icons.enable = true;
    };
    extraConfigLuaPost = ''
      require("mini.icons").setup({})
      MiniIcons.mock_nvim_web_devicons()
    '';
  };
}
