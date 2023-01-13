local status, _ = pcall(vim.cmd, "colorscheme dracula")
if not status then
	print("specified colorscheme not found")
	return
end
