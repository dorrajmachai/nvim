--------------------------
-- TREESITTER
--------------------------

return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	config = function()
		require('nvim-treesitter.install').compilers = { "clang" }
		require('nvim-treesitter.configs').setup {
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"lua",
				"javascript",
				"typescript",
				"python",
				"r",
				"help",
				"tsx",
				"css",
				"json",
				"fish",
				"go",
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				disable = { "css" },
				additional_vim_regex_highlighting = false,
			},
			autopairs = {
				enable = true,
			},
			indent = {
				enable = true,
				disable = { "python", "css" },
			},
		}
	end
}
