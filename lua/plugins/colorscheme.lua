return {
    {
        'maxmx03/solarized.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local configs = require("solarized")
            local vim = vim

            vim.opt.background = 'dark'
            configs.setup({ })
            vim.cmd.colorscheme 'solarized'
        end
    },
}
