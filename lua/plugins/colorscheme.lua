return {
    {
        'maxmx03/dracula.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local configs = require "dracula"
            local vim = vim

            configs.setup({
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
