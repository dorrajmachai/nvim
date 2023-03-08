--------------------------
-- INIT FILE
--------------------------
-- Sources for this file:
-- 		https://www.youtube.com/watch?v=aqlxqpHs-aQ || this video helped me make better sense of the Lazy documentation, found here:
-- 		https://github.com/folke/lazy.nvim || this is the plugin manager we're using for this config
-- 		https://www.nerdfonts.com/font-downloads || this is where you can get the font I'm using (Iosevka Nerd Font)
-- 		https://stackoverflow.com/questions/630884/opening-vim-help-in-a-vertical-split-window || this helped me learn about using autocmd in Lua, as did this:
-- 		https://www.youtube.com/watch?v=ekMIIAqTZ34&t=249s || ...which is a video that shows us a bit about them, and then this:
-- 		https://alpha2phi.medium.com/neovim-for-beginners-lua-autocmd-and-keymap-functions-3bdfe0bebe42 || which is where I saw the "pattern" parameter
-- 		https://neovim.io/doc/user/autocmd.html || also, here's a link to the autocmd documentation
-- 		https://github.com/infely/nfi || I use this tool to copy nerd font icons to the clipboard

--------------------------
-- IMPORTS
--------------------------
require 'emaget.keymaps' 
require 'emaget.options'

--------------------------
-- LAZY SETUP
--------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup('plugins')

---------------------------
-- COLOR SCHEME
---------------------------

-- vim.cmd [[ colorscheme catppuccin ]]
vim.g.airline_theme = 'catppuccin'
vim.cmd [[ colorscheme moonfly ]]
--------------------------
-- AUTOCOMMANDS
--------------------------

-- I want help files to open in a vertical split...
-- To do it the Vim way, do this:
-- vim.cmd 'autocmd Filetype help wincmd L'

-- To do it the Neovim way (that is to say, "in Lua"), do this:
vim.api.nvim_create_autocmd('FileType', { pattern = 'help', command = ':wincmd L' })
