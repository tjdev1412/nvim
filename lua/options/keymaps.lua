-- enter normal mode when in terminal mode
vim.keymap.set("t", "<Esc>", "<C-n><C-\\>", { remap = true })

-- Floating Terminal
vim.keymap.set("n", "<leader>ft", ":FTerm<CR>", { silent = true })
