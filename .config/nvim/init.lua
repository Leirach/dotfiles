require("config.lazy")

vim.opt.clipboard = "unnamedplus"

-- Key mappings
vim.api.nvim_set_keymap('v', 'd', '"ad', { noremap = true })
vim.api.nvim_set_keymap('n', 'd', '"ad', { noremap = true })
vim.api.nvim_set_keymap('n', 'dd', '"add', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '"+dd', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-k>', '"+d', { noremap = true })
vim.api.nvim_set_keymap('x', 'p', '"adP', { noremap = true })

vim.keymap.set({ "n", "x", "i" }, "<C-d>", function()
  require("vscode-multi-cursor").addSelectionToNextFindMatch()
end)
