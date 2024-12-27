return {
    {
        'maxmx03/dracula.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local dracula = require "dracula"
            local vim = vim

            dracula.setup({
                transparent = false,
                plugins = {
                    ["nvim-treesitter"] = true,
                    ["nvim-lspconfig"] = true,
                    ["nvim-cmp"] = true,
                    ["nvim-tree.lua"] = true,
                    ["gitsigns.nvim"] = true,
                    ["neogit"] = true,
                    ["todo-comments.nvim"] = true,
                    ["telescope.nvim"] = true,
                }
            })
            vim.cmd.colorscheme 'dracula'
        end
    },
}
