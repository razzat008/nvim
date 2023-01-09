local fn = vim.fn
local o = vim.o
local cmd = vim.cmd

local function highlight(group, fg, bg)
	cmd("highlight " .. group .. " guifg=" .. fg .. " guibg=" .. bg)
end

-- highlight("StatusLeft", "red", "#32344a")
highlight("StatusLeft", "white", "#32344a")
highlight("StatusMid", "white", "#32344a")
-- highlight("StatusRight", "green", "#32344a")
highlight("StatusRight", "white", "#32344a")

local function get_column_number()
	return fn.col(".")
end

function status_line()
	return table.concat({
		"%#StatusLeft#",
		"%f",
		"%=",
		"%#StatusMid#",
		"%l,",
		get_column_number(),
		"%=",
		"%#StatusRight#",
		"%p%%",
	})
end

vim.o.statusline = "%!luaeval('status_line()')"
