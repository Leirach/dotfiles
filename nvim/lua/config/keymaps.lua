local map = vim.keymap.set
local opts = { noremap = true }

-- delete without yanking
map("v", "d", '"ad', opts)
map("n", "d", '"ad', opts)
map("n", "dd", '"add', opts)
map("n", "<C-k>", '"+dd', opts)
map("v", "<C-k>", '"+d', opts)
map("x", "p", '"adP', opts)
