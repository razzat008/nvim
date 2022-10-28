local setup, npairs = pcall(require, "nvim-autopairs")
if not setup then
	print("auto pairs not found ")
	return
end

npairs.setup({
	enable_check_bracket_line = false,
})
