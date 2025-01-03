-- lots of inspiration from
-- https://medium.com/unixification/must-have-neovim-keymaps-51c283394070

local vim = vim

-- windows/linux
local meta_chr_copy = "<C-c>"
local meta_chr_paste = "<C-v>"

if vim.fn.has("mac") then
    meta_chr_copy = "<D-c>"
    meta_chr_paste = "<D-v>"
end

function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- avoid typos :)
Map("ca", "W", "w")
Map("ca", "Wq", "wq")
Map("ca", "wQ", "wq")
Map("ca", "Q", "q")

-- make copy and paste from clipboard easier
Map("n", meta_chr_copy, '"+y')
Map("v", meta_chr_copy, '"+y')
Map("n", meta_chr_paste, '"+p')

-- move between visible buffers
Map("n", "<C-h>", "<C-w>h")
Map("n", "<C-j>", "<C-w>j")
Map("n", "<C-k>", "<C-w>k")
Map("n", "<C-l>", "<C-w>l")

-- switch between buffers
Map("n", "<TAB>", ":bn<CR>")
Map("n", "<S-TAB>", ":bp<CR>")
Map("n", "<leader>bd", ":bd<CR>")

-- move code blocks up/down
Map("v", "J", ":m '>+1<CR>gv=gv")
Map("v", "K", ":m '<-2<CR>gv=gv")
-- move code blocks left/right
Map("v", "<", "<gv")
Map("v", ">", ">gv")

-- Telescope
Map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
Map("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")
Map("n", "<leader>fe", "<cmd> Telescope file_browser <CR>")
Map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
Map("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
Map("n", "<leader>fh", "<cmd> Telescope help_tags <CR>")
Map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
Map("n", "<leader>fc", "<cmd> Telescope colorschemes <CR>")

-- nvim-tree
Map("n", "<leader>tt", "<cmd> NvimTreeToggle <CR>")
Map("n", "<D-P>", "<cmd> lua require'telescope'.extensions.project.project{} <CR>")

-- neogit
Map("n", "<leader>ng", "<cmd> Neogit <CR>")
