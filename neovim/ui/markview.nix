{
  programs.nixvim = {
    plugins.markview = {
      enable = true;
    };
    extraConfigLua = ''
      local markview = require("markview")
      local presets = require("markview.presets")

      markview.setup({
      	headings = presets.headings.glow_labels,
      })

      vim.cmd("Markview enableAll")
    '';
  };
}
