return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local vim = vim
            local configs = require("lualine")

            configs.setup {
                options = {
                    theme = vim.g.colors_name,
                }
            }
        end,
    },
}
