local setup, bufferline = pcall(require, "bufferline")
if not setup then
	print("buffer line couldn't be loaded")
	return
end

bufferline.setup({
	options = {
		enforce_regular_tabs = true,
		mode = "",
		color_icons = true,
		show_tab_indicators = true,
		offsets = {
			{
				filetype = "NvimTree",
				text = "Ntree",
				highlight = "Directory",
				separator = true, -- use a "true" to enable the default, or set your own character
			},
		},
		separator_style = "slant",
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
	},
})
