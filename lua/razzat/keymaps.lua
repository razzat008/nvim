local vmap = vim.keymap.set

-- basic mappings
vim.g.mapleader = " "
vmap("n","<leader>e",vim.cmd.Ex)
vmap("n",";",":")

--allow moving the cursor through wrapped lines

vmap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vmap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


--switching between windows
vmap("n","<c-l>","<c-w>l")
vmap("n","<c-h>","<c-w>h")
vmap("n","<c-j>","<c-w>j")
vmap("n","<c-k>","<c-w>k")
