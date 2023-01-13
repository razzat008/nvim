local opt = vim.opt -- for options

opt.ruler = true

opt.mouse = "a"
opt.mousemoveevent = true
opt.ignorecase = true
opt.smartcase = true
opt.wrap = false

--line numbers
opt.number = true
opt.relativenumber = true

--tabs
opt.tabstop = 2
opt.autoindent = true
opt.shiftwidth = 2
opt.expandtab = true
opt.timeoutlen = 400
opt.undofile = true

--search settings
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

--back spaces
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

--slip windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-", "_")
vim.notify = require("notify")

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250
