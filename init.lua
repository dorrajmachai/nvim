------------------------
-- INIT FILE
------------------------
-- Sources for this file:
-- 	https://www.youtube.com/watch?v=aqlxqpHs-aQ || this video helped me make better sense of the Lazy documentation, found here:
-- 	https://github.com/folke/lazy.nvim || this is the plugin manager we're using for this config
-- 	https://www.nerdfonts.com/font-downloads || you can get the font I'm using (Iosevka Nerd Font) from here

------------------------
-- IMPORTS
------------------------
require 'emaget.keymaps' 
require 'emaget.options'

------------------------
-- LAZY SETUP
------------------------
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

--------------------------
-- COLOR SCHEME
--------------------------

vim.cmd [[ colorscheme catppuccin ]]
