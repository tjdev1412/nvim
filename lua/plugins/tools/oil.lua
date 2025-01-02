local oil = require("oil")

vim.keymap.set("n", "-", ":Oil<CR>", { silent = true })

oil.setup()
