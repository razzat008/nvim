-- vim.g.mapleader = '\\'
vim.g.mapleader = " "

local keymap = vim.keymap -- shortform

--general keymaps
keymap.set("n", "<leader>/", '<cmd>lua require("Comment.api").toggle.linewise.current()<cr><silent><ESC>')
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<ESC>", ":nohl<cr><ESC><silent>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")
-- keymap.set("n", "0", "g0")
-- keymap.set("n", "$", "g$")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<C-right>", ":tabn<CR>") --  go to next tab
keymap.set("n", "<C-s>", ":w<CR>") --   save file
keymap.set("i", "<C-s>", "<cmd>w<CR>") -- save file
keymap.set("n", "<C-left>", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

----------------------
-- Plugin Keybinds
----------------------
--local keybindings
keymap.set("n", ";", ":") -- saving time

-- vim maximizer
keymap.set("n", "<leader>h", ":MaximizerToggle<CR>") --  toggle/hide windows

-- nvim-tree
-- keymap.set("n", "<leader>n", ":NvimTreeFocus<CR>") -- toggle file explorer
keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR><silent>") -- change focus explorer

-- telescope | fzf
-- keymap.set("n", "<leader>fa", "<cmd>FZF<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>") -- list available keymaps

-- buffer management/ bufferline
keymap.set("n", "<leader>x", "<cmd>bdelete<cr> ") -- close current buffer/tab
keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext<cr>") --  cycle through tab
-- keymap.set("n", "<C-left>", ":bp<CR>") --  go to next tab
-- keymap.set("n", "<C-q>", "<cmd>bdelete<cr> ")
-- keymap.set("n", "<C-right>", ":bn<CR>") --  go to next tab
