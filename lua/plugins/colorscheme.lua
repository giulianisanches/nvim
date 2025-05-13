return {
    {
        'olimorris/onedarkpro.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local configs = require("onedarkpro")
            local vim = vim

            vim.opt.background = 'dark'
            configs.setup({ })
            vim.cmd.colorscheme 'onedark'
        end
    },
}
