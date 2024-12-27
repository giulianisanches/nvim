local vim = vim

local default_indent = 4

vim.opt.guifont = "Fira Code:h14"
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

vim.cmd("filetype plugin indent on")
vim.cmd("colorscheme dracula")
-- paste from clipboard
-- nnoremap <D-v> "+p
-- nmap <c-c> "+y
-- vmap <c-c> "+y
-- nmap <c-v> "+p
