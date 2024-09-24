{
  programs.nixvim = {
    plugins.markview = {
      enable = true;
    };
    extraConfigLua = ''
      local markview = require("markview")
      local presets = require("markview.presets")

      local colors = require("base16-colorscheme").colors

      markview.setup({
      	-- headings = presets.headings.glow_labels,
      	horizontal_rules = {
      		parts = {
      			{
      				type = "repeating",
      				text = "─",

      				repeat_amount = function()
      					local w = vim.api.nvim_win_get_width(0)
      					local l = vim.api.nvim_buf_line_count(0)

      					l = vim.fn.strchars(tostring(l)) + 4

      					return math.floor((w - (l + 3)) / 2)
      				end,
      			},
      		},
      	},
      	code_blocks = {
      		style = "minimal",
      		hl = "CursorLine",
      	},
      	highlight_groups = {
      		{
      			group_name = "Heading1",
      			value = { fg = colors.base0C, bg = colors.base01 },
      		},
      		{
      			group_name = "Heading2",
      			value = { fg = colors.base0E, bg = colors.base01 },
      		},
      		{
      			group_name = "Heading3",
      			value = { fg = colors.base0D, bg = colors.base01 },
      		},
      		{
      			group_name = "Link",
      			value = { fg = colors.base08 },
      		},
      		{
      			group_name = "ListItems",
      			value = { fg = colors.base09 },
      		},
      	},
      	headings = {
      		enable = true,

      		padding_left = "  ",
      		padding_right = "  ",

      		heading_1 = {
      			style = "label",

      			padding_left = "  ",
      			padding_right = "  ",
      			shift_width = 1,

      			hl = "Heading1",
      		},

      		heading_2 = {
      			style = "label",

      			padding_left = "  ",
      			padding_right = "  ",
      			shift_width = 2,

      			hl = "Heading2",
      		},
      		heading_3 = {
      			style = "label",

      			padding_left = "  ",
      			padding_right = "  ",
      			shift_width = 3,

      			hl = "Heading3",
      		},
      	},
      	links = {
      		enable = true,
      		hyperlinks = {
      			hl = "Link",
      		},
      	},
      	list_items = {
      		enable = true,
      		marker_minus = {
      			text = "",
      			hl = "ListItems",
      		},
      		marker_plus = {
      			text = "",
      			hl = "ListItems",
      		},
      		marker_star = {
      			text = "",
      			hl = "ListItems",
      		},
      		-- marker_dot = { hl = "ListItems" },
      	},
      })

      vim.cmd("Markview enableAll")
    '';
  };
}
