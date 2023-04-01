require("razzat.mappings")
require("razzat.options")

--custom command for peek.nvim
vim.cmd "silent! command! PeekOpen lua require('peek').open()"
vim.cmd "silent! command! PeekClose lua require('peek').close()"
