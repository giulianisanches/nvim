return {
    {
        "mason-org/mason.nvim",

        config = function()
            local configs = require("mason")
            
            configs.setup({})
        end,
    }
}
