--------------------------
-- CATPPUCCIN THEME
--------------------------

return {
	'catppuccin/nvim', name = 'catppuccin',
	lazy = false,
	config = function()
		require('catppuccin').setup {
			flavour = 'mocha',
			-- Sources for this customization:
			-- 	https://stackoverflow.com/questions/9001337/vim-split-bar-styling
			-- 	https://github.com/catppuccin/nvim#overwriting-highlight-groups
			custom_highlights = function(colors) 
				return {
					VertSplit = { fg = '#a6adc8' },
					StatusLineNC = {fg = '#a6adc8', bg = '#a6adc8' },
				}
			end
		}
	end
}
