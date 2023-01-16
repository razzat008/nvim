local status, _ = pcall(vim.cmd, "colorscheme dracula")
-- local status, _ = pcall(vim.cmd, "colorscheme default")
if not status then
	print("specified colorscheme not found")
	return
end
