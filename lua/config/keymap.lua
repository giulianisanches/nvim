local vim = vim

-- windows/linux
local meta_chr_copy = "<C-c>"
local meta_chr_paste = "<C-v>"

if vim.fn.has("mac") then
    meta_chr_copy = "<D-c>"
    meta_chr_paste = "<D-v>"
end


vim.keymap.set("ca", "W", "w")
vim.keymap.set("ca", "Wq", "wq")
vim.keymap.set("ca", "wQ", "wq")
vim.keymap.set("ca", "Q", "q")

vim.keymap.set("n", meta_chr_copy, '"+y')
vim.keymap.set("v", meta_chr_copy, '"+y')
vim.keymap.set("n", meta_chr_paste, '"+p')

vim.keymap.set("n", ",t", ":NvimTreeToggle<CR>")
