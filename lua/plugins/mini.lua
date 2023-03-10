--------------------------
-- MINI STARTER
--------------------------

return {
	'echasnovski/mini.starter', version = false,
	config = function ()
		require('mini.starter').setup({
			header = "Welcome to Neovim-QT.",
			footer = "Configured by emaget_",
		})
	end
}
