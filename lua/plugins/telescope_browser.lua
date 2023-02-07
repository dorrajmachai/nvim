--------------------------
-- TELESCOPE BROWSER
--------------------------

return {
	'nvim-telescope/telescope-file-browser.nvim',
	lazy = false,
	config = function()
		require('telescope').load_extension 'file_browser'
	end
}
