local blink = require("blink-cmp")

blink.setup({
	keymap = {
		preset = "enter",
		["<Down>"] = { "select_next", "snippet_forward", "fallback" },
		["<Up>"] = { "select_prev", "snippet_backward", "fallback" },
	},
	completion = {
		list = { selection = "auto_insert" },
		menu = { border = "rounded" },
	},
	signature = { window = { border = "rounded" } },
	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "mono",
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
})
