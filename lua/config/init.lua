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

require('config.globals')
require('config.options')
local opts = {
	defaults = {
		lazy = true,
	},
	install = {
	},
	rtp ={
	disabled_plugins = {
		"gzip",
		"matchit",
		"matchparen",
		"netrwPlugin",
		"tarPlugin",
		"tohtml",
		"tutor",
		"zipPlugin",
	}
},
	change_detection = {
		notify = false,
	}
}
local M = { import = "plugins" }

require("lazy").setup({
  { import = 'plugins' },
  { import = 'plugins.lsp' }
},
opts)
require("config.theme")
require('config.keymaps')

