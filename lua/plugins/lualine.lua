--------------------------
-- LUALINE CONFIGURATION
--------------------------

-- giving lualine some Catppuccin
local colors = {
	-- Default colors for each mode are as follows:
	-- 	Normal: Blue, #89b4fa
	-- 	Insert: Green, #a6e3a1
	-- 	Visual: Mauve, #cba6f7
	-- 	Command: Peach, #fab387
	
	-- Command will become Green, Normal will become Lavendar, Visual will become Yellow, and Insert will become Pink
	command = '#a6e3a1',
	normal = '#b4befe',
	visual = '#f9e2af',
	insert = '#f5c2e7',
	base = '#1e1e2e',
	crust = '#11111b',
	blue = '#89b4fa',
	subtext = 'bac2de',
}

-- NOTE: the variable 'cust_cat' is short for 'custom catppuccin'
local cust_cat = {
	normal = {
		a = { fg = colors.crust, bg = colors.normal },
		b = { fg = colors.blue, bg = colors.base },
		c = { fg = colors.blue, bg = colors.crust }
	},
	insert = { a = { fg = colors.crust, bg = colors.insert } },
	visual = { a = { fg = colors.crust, bg = colors.visual } },
	command = { a = { fg = colors.crust, bg = colors.command } },
	inactive = {
		a = { fg = colors.subtext, bg = colors.base },
		b = { fg = colors.subtext, bg = colors.base },
		c = { fg = colors.base, bg = colors.base }
	},
}

return {
	'nvim-lualine/lualine.nvim',
	dependencies = {
		'kyazdani42/nvim-web-devicons'
	},
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = cust_cat,
				component_separators = '|',
				section_separators = {  left = '', right = '' },
			},
			sections = {
				lualine_a = {
					{ 'mode', separator = { left = '' }, right_padding = 2 },
				},
				lualine_b = { 'filename', 'branch' },
				lualine_c = { 'fileformat' },
				lualine_x = {},
				lualine_y = { 'filetype', 'progress' },
				lualine_z = {
					{ 'location', separator = { right = '' }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {'filename'},
				lualine_x = {'location'},
				lualine_y = {},
				lualine_z = {}
			},
		}
	end
}
