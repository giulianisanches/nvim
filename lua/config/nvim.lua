local vim = vim

local default_indent = 4
-- windows/linux
local meta_chr_copy = "<C-c>"
local meta_chr_paste = "<C-v>"

if vim.fn.has("mac") then
    meta_chr_copy = "<D-c>"
    meta_chr_paste = "<D-v>"
end

-- disable netrw at the very start of your init.lua (needed by nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.guifont = "Fira Code:h14"
vim.opt.termguicolors = true
vim.opt.timeout = false
vim.opt.wrap = false
vim.opt.tabstop = default_indent
vim.opt.shiftwidth = default_indent
vim.opt.softtabstop = default_indent
vim.opt.expandtab = true
vim.opt.cindent = true
vim.opt.mouse = "a"
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.infercase = true
vim.opt.smartindent = true
vim.opt.autowrite = true
vim.opt.wildmode = "list:longest,full"
vim.opt.shortmess = "atTI"
vim.opt.number = true
vim.opt.laststatus = 2
--vim.opt.statusline = '%<%F\ %=%-5.(%L\ %v\ %m\ %r%)'
vim.opt.completeopt = "longest,menuone,preview"
vim.opt.syntax = "on"

vim.keymap.set("ca", "W", "w")
vim.keymap.set("ca", "Wq", "wq")
vim.keymap.set("ca", "wQ", "wq")
vim.keymap.set("ca", "Q", "q")

vim.keymap.set("n", meta_chr_copy, '"+y')
vim.keymap.set("v", meta_chr_copy, '"+y')
vim.keymap.set("n", meta_chr_paste, '"+p')

vim.cmd("filetype plugin indent on")
