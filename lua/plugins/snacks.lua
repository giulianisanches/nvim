local excluded = { "node_modules", ".git", ".venv", ".terraform" }
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = { preset = "select" }, -- use the telescope layout preset
      exclude = excluded,
      hidden = true,
      ignored = true,
      sources = {
        files = {
          hidden = true,
          ignored = true,
        },
        grep = {
          hidden = true,
          ignored = true,
        },
        projects = {
          dev = { "~/dev/src" },
          patterns = { ".git", ".hg", ".bzr" },
          max_depth = 4,
          confirm = function(picker, item)
            Snacks.picker.actions.load_session(picker, item)

            local all_bufs_ids = vim.api.nvim_list_bufs()

            local valid_bufs = vim.tbl_filter(function(buf)
              return vim.api.nvim_buf_is_valid(buf)
                and vim.bo[buf].buftype == ""
                and vim.api.nvim_buf_get_name(buf) ~= ""
            end, all_bufs_ids)

            local del_bufs = vim.tbl_filter(function(buf)
              return item.file ~= vim.fs.root(buf, ".git")
            end, valid_bufs)

            local claudecode_loaded, terminal = pcall(require, "claudecode.terminal")
            local active_bufnr = claudecode_loaded
              and terminal.get_active_terminal_bufnr
              and terminal.get_active_terminal_bufnr()
            if active_bufnr then
              vim.cmd("ClaudeCodeSendText /quit")
            end

            picker:close()

            for _, buf in ipairs(del_bufs) do
              vim.api.nvim_buf_delete(buf, { force = true })
            end
          end,
        },
      },
    },
  },
}
