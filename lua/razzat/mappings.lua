-- basic mappings
vim.g.mapleader = " "
vim.keymap.set("n","<leader>e",vim.cmd.Ex)
vim.keymap.set("n",";",":")

--allow moving the cursor through wrapped lines

vim.keymap.set("n","j","gj")
vim.keymap.set("n","k","gk")


--switching between windows
vim.keymap.set("n","<c-l>","<c-w>l")
vim.keymap.set("n","<c-h>","<c-w>h")
vim.keymap.set("n","<c-j>","<c-w>j")
vim.keymap.set("n","<c-k>","<c-w>k")
