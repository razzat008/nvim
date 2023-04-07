local setup, treesiter = pcall(require, "nvim-treesitter")

if not present then
	return
end

local options = {
	auto_install = true,

	ensure_installed = { "c",
	"lua",
	"vim",
	"help",
	"query",
	"html",
	"css",
	"markdown",
	"bash",
	"javascript",
	"c",
	},

highlight = {
	enable = true,
	},
}

treesitter.setup(options)
if not setup then
	return
end

