return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local vim = vim
            local lualine = require "lualine"

            lualine.setup {
                options = {
                    theme = vim.g.colors_name,
                }
            }
        end,
    },
}
