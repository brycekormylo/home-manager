{
  programs.nixvim = {
    plugins.lspkind = {
      enable = true;
      extraOptions = {
        maxwidth = 50;
        ellipsis_char = "...";
      };
      cmp.menu = {
        buffer = "[buf]";
        nvim_lsp = "[LSP]";
        nvim_lua = "[api]";
        path = "[path]";
        luasnip = "[snip]";
        gh-issues = "[issues]";
        tn = "[TabNine]";
        eruby = "[erb]";
      };
    };
    extraConfigLua = ''
      kind_icons = {
      	Text = "󰊄",
      	Method = "",
      	Function = "󰡱",
      	Constructor = "",
      	Field = "",
      	Variable = "󱀍",
      	Class = "",
      	Interface = "",
      	Module = "󰕳",
      	Property = "",
      	Unit = "",
      	Value = "",
      	Enum = "",
      	Keyword = "",
      	Snippet = "",
      	Color = "",
      	File = "",
      	Reference = "",
      	Folder = "",
      	EnumMember = "",
      	Constant = "",
      	Struct = "",
      	Event = "",
      	Operator = "",
      	TypeParameter = "",
      }
    '';
  };
}
