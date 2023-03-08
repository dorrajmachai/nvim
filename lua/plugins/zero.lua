--------------------------
-- LSP ZERO
--------------------------
-- Pumpkins by less.people
return {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	-- supporting all the lsp stuff
	dependencies = {
		{ 'neovim/nvim-lspconfig' },
		{ 'williamboman/mason.nvim' },
		{ 'williamboman/mason-lspconfig.nvim' },

		-- autocompleting all the things
		{ 'hrsh7th/nvim-cmp' },
		{ 'hrsh7th/cmp-nvim-lsp' },

		-- getting snippy with neovim
		{ 'L3MON4D3/LuaSnip' },
	},
}