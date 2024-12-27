return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local vim = vim

            require("lualine").setup {
                options = {
                    theme = vim.g.colors_name,
                }
            }
        end,
    },
}
