return {
    return {
        {
          'maxmx03/dracula.nvim',
          lazy = false,
          priority = 1000,
          config = function ()
            ---@type dracula
            local dracula = require "dracula"

            dracula.setup({
            styles = {
              Type = {},
              Function = {},
              Parameter = {},
              Property = {},
              Comment = {},
              String = {},
              Keyword = {},
              Identifier = {},
              Constant = {},
            },
            transparent = false,
            on_colors = function (colors, color)
              ---@type dracula.palette
              return {
                -- override or create new colors
                mycolor = "#ffffff",
                -- mycolor = 0xffffff,
              }
            end,
            on_highlights = function (colors, color)
              ---@type dracula.highlights
              return {
                ---@type vim.api.keyset.highlight
                Normal = { fg = colors.mycolor }
              }
            end,
            plugins = {
              ["nvim-treesitter"] = true,
              ["nvim-lspconfig"] = true,
              ["nvim-cmp"] = true,
              ["nvim-tree.lua"] = true,
              ["gitsigns.nvim"] = true,
              ["neogit"] = true,
              ["todo-comments.nvim"] = true,
              ["lazy.nvim"] = true,
              ["telescope.nvim"] = true,
            }
            })
            vim.cmd.colorscheme 'dracula'
          end
        },
}
