return {
    {
        "nvim-telescope/telescope-project.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            local project_actions = require("telescope._extensions.project.actions")
            local vim = vim
            require('telescope').setup {
                project = {
                    base_dirs = {
                        { path = '~/dev/src', max_depth = 4 },
                    },
                    hidden_files = true, -- default: false
                    theme = vim.g.colors_name,
                    order_by = "asc",
                    search_by = "title",
                    sync_with_nvim_tree = true, -- default false
                    -- -- default for on_project_selected = find project files
                    -- on_project_selected = function(prompt_bufnr)
                    --     project_actions.change_working_directory(prompt_bufnr, false)
                    -- end,
                }
            }
        end,
    },
}
