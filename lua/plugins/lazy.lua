local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = require("plugins.list").plugins

require("lazy").setup({
	spec = plugins,
	install = { missing = true, colorscheme = { "catppuccin-macchiato" } },
	ui = {
	    size = { width = 0.9, height = 0.8 },
	    border = "rounded",
	}
})
