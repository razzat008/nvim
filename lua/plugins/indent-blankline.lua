local setup, comment = pcall(require, "indent_blankline")
if not setup then
	return
end
local opt = vim.opt

opt.list = true
-- to show the end of a line
-- opt.listchars:append("eol:↴")
opt.listchars:append("space:⋅")
comment.setup({
	show_current_context = true,
	show_current_context_start = true,
	show_end_of_line = true,
	space_char_blankline = " ",
})
