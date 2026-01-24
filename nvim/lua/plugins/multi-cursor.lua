return {
    'vscode-neovim/vscode-multi-cursor.nvim',
    event = 'VeryLazy',
    cond = vim.g.vscode,
    opts = {},
    keys = {{
        "<C-d>",
        function()
            require("vscode-multi-cursor").addSelectionToNextFindMatch()
        end,
        mode = {"n", "x", "i"}
    }}
}
