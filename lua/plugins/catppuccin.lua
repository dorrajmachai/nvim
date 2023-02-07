--------------------------
-- CATPPUCCIN
--------------------------

return {
	'catppuccin/nvim', name = 'catppuccin',
	lazy = false,
	config = function()
		require('catppuccin')
	end
}
