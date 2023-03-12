--------------------------
-- TOGGLETERM
--------------------------

-- as seen in "init.lua," here is the Vim way:
-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- ...and the way you do it in Lua:

return {
	'akinsho/toggleterm.nvim',
	lazy = false,
	config = function()
		local powershell_options = {
			shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
			shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
			shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
			shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
			shellquote = "",
			shellxquote = "",
		}
		for option, value in pairs(powershell_options) do
			vim.opt[option] = value
		end

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
		--	shell = vim.o.shell,
			direction = 'horizontal',
		}

		local Terminal = require("toggleterm.terminal").Terminal
		local python = Terminal:new({ cmd = 'python', direction = 'float', hidden = true })
		local lua = Terminal:new({ cmd = 'lua', direction = 'horizontal', hidden = true })

		function _PYTHON_TOGGLE()
			python:toggle()
		end

		function _LUA_TOGGLE()
			lua:toggle()
		end
	end,
}

