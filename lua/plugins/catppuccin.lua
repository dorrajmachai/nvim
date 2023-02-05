--------------------------
-- CATPPUCCIN THEME
--------------------------

return {
	'catppuccin/nvim', name = 'catppuccin',
  lazy = false,
	config = function()
		require('catppuccin').setup {
			flavour = 'mocha',
			color_overrides = {

			},
		}
	end
}
