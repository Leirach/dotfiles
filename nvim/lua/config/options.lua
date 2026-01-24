vim.opt.clipboard = "unnamedplus"

-- default when sleuth can’t detect
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- always keep final newline
vim.opt.fixendofline = true

-- show whitespace
vim.opt.list = true
vim.opt.listchars = {
  lead = "·",
  trail = "·",
}

vim.opt.ignorecase = true
vim.opt.smartcase = true
