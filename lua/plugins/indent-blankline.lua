local setup, comment = pcall(require, "indent_blankline")
if not setup then
	return
end

vim.opt.list = true
-- to show the end of a line
-- vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup({})
