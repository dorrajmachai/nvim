--------------------------
-- TOGGLETERM
--------------------------

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
-- vim.api.nvim_create_autocmd("TermOpen", {command = term://* lua set_terminal_keymaps()})

return {
	'akinsho/toggleterm.nvim',
	lazy = false,
	config = function()
		require('toggleterm').setup {
			size = 20,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			start_in_insert = true,
			autochdir = true,
			persist_size = true,
			close_on_exit = true,
			shell = vim.o.shell,
			direction = 'horizontal',
		}		

		local Terminal = require("toggleterm.terminal").Terminal
		local python = Terminal:new({ cmd = 'python3', direction = 'float', hidden = true })

		function _PYTHON_TOGGLE()
			python:toggle()
		end
	end,
}

