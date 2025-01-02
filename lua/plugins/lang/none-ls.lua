local nonels = require("null-ls")

vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})

nonels.setup({
	sources = {
		nonels.builtins.formatting.stylua,
		nonels.builtins.formatting.black,
	},
})
