return {
  {
    "tpope/vim-sleuth",
    cond = not vim.g.vscode,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    cond = not vim.g.vscode,
    main = "ibl",
    opts = {
      indent = {
        char = "│",
      },
      scope = { enabled = false },
      whitespace = {
        remove_blankline_trail = false,
      },
    },
  },

  {
    "ntpeters/vim-better-whitespace",
    cond = not vim.g.vscode,
    init = function()
      vim.g.better_whitespace_enabled = 1
      vim.g.strip_whitespace_on_save = 1
      vim.g.strip_whitespace_confirm = 0
      vim.g.strip_only_modified_lines = 1
    end,
  },
}
