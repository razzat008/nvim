local present, treesitter = pcall(require,"treesitter")

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
