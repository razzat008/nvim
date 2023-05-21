local o = vim.opt
local g = vim.g
keymap = vim.keymap.set


-- other options
o.wrap = false
o.guicursor = ""

-- options relating to number
o.nu = true
o.rnu = true

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.smartindent = true

o.wrap = false

o.swapfile = true
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

o.hlsearch = false
o.incsearch = true

o.termguicolors = true

o.scrolloff = 8
o.signcolumn = "yes"
o.isfname:append("@-@")
o.iskeyword:append("-", "_")

o.updatetime = 50

o.colorcolumn = "80"

o.completeopt = 'menuone,noselect'
