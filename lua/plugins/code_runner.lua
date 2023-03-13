--------------------------
-- CODE RUNNER
--------------------------

return {
	"CRAG666/code_runner.nvim",
	config = function ()
	require('code_runner').setup({
		mode = "toggleterm",
		filetype = {
				javascript = "node $fileName",
				python = "python $fileName",
				typescript = "tsc $fileName",
				lua = "lua $fileName",
			},
		term = {
				position = "bot",
				size = 20,
			}
		})
	end
}
