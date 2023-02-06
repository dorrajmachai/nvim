--------------------------
-- WHICH KEY
--------------------------

-- Which-key documentation:
-- 	https://github.com/folke/which-key.nvim



return {
	'folke/which-key.nvim',
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300

		local whichkey = require('which-key')
		local opts = {
			mode = "n", -- NORMAL mode
			prefix = "<leader>",
			buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
			silent = true, -- use `silent` when creating keymaps
			noremap = true, -- use `noremap` when creating keymaps
			nowait = true, -- use `nowait` when creating keymaps
		}

		local mappings = {
			l = { '<cmd>Lazy<cr>', 'Lazy' },
			t = {
				name = 'Terminal',
				f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
				h = { "<cmd>ToggleTerm size=20 direction=horizontal<cr>", "Horizontal" },
				p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
			},
		}

		require('which-key').setup ({
			plugins = {
				marks = true,
				registers = true,
				spelling = {
					enabled = true,
					suggestions = 20,
				},
			},
			presets = {
				operators = false,
				motions = true,
				text_objects = true,
				windows = true,
				nav = true,
				z = true,
				g = true,
			},
			-- operators = { gc = 'Comments' },
			key_labels = {
				['<space>'] = 'SPC',
				['<cr>'] = 'RET',
				['<tab>'] = 'TAB',
			},
			icons = {
				breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
				separator = "➜", -- symbol used between a key and it's label
				group = "+", -- symbol prepended to a group
			},
			popup_mappings = {
				scroll_down = '<c-n>',
				scroll_up = '<c-p>',
			},
			window = {
				border = 'single',
				position = 'bottom',
				margin = { 1, 0, 1, 0 },
				padding = { 2, 2, 2, 2 }, 
				winblend = 0
			},
			layout = {
				height = { min = 4, max = 25 },
				width = { min = 20, max = 50 },
				spacing = 3,
				align = 'left',
			},
			ignore_missing = true,
			hidden = { '<silent>', '<cmd>', '<Cmd>', '<CR>', 'call', 'lua', '^:', '^ ' },
			show_help = true,
			show_keys = true,
			triggers = 'auto',
			triggers_blacklist = {
				i = { "j", "k" },
				v = { "j", "k" },
			},
		})
		whichkey.register(mappings, opts)
	end
	
}

