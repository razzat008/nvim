vmap = vim.keymap.set

-- basic mappings
vim.g.mapleader = " "
vmap("n","<leader>e",vim.cmd.Ex)
vmap("n",";",":")

vmap("n", "<C-d>", "<C-d>zz")
vmap("n", "<C-u>", "<C-u>zz")
vmap("n", "n", "nzzzv")
vmap("n", "N", "Nzzzv")
--allow moving the cursor through wrapped lines

vmap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vmap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


--switching between windows
vmap("n","<c-l>","<c-w>l")
vmap("n","<c-h>","<c-w>h")
vmap("n","<c-j>","<c-w>j")
vmap("n","<c-k>","<c-w>k")

-- shift q sucks
vmap("n","Q","<nop>")

-- greatest remap ever
vmap("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vmap({"n", "v"}, "<leader>y", [["+y]])
vmap("n", "<leader>Y", [["+Y]])

vmap({"n", "v"}, "<leader>d", [["_d]])

vmap("n", "<leader><leader>", function()
    vim.cmd("so")
end)
