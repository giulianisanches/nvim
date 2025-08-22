return {
    {
        "mason-org/mason.nvim",
        opts = {}

    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "vimls",
                "pyright",
                "ts_ls",
                "terraformls",
                "gopls",
                "powershell_es",
            },
        },
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({})
            lspconfig.ts_ls.setup({})
        end
    },
}
