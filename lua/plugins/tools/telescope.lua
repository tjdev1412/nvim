local builtin = require("telescope.builtin")
local telescope = require("telescope")

vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>cs", builtin.colorscheme)

telescope.setup({
    pickers = {
	colorscheme = {
	    enable_preview = true,
	},
    },
})
