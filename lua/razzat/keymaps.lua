local map = vim.keymap.set

-- basic mappings
vim.g.mapleader = " "
map("n","<leader>e",vim.cmd.Ex)
map("n",";",":")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
--allow moving the cursor through wrapped lines

map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


--switching between windows
map("n","<c-l>","<c-w>l")
map("n","<c-h>","<c-w>h")
map("n","<c-j>","<c-w>j")
map("n","<c-k>","<c-w>k")

-- shift q sucks
map("n","Q","<nop>")

-- greatest remap ever
map("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

map({"n", "v"}, "<leader>d", [["_d]])

map("n", "<leader><leader>", function()
    vim.cmd("so")
end)
