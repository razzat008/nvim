return {
	{
		"nvim-telescope/telescope.nvim",
			enabled = true,
			event = "BufEnter",
			config = function()
				require("after.plugin.telescope")
				end,
			tag = "0.1.1",
			dependencies = { "nvim-lua/plenary.nvim" },
	},

		--markdown
		{
			"toppair/peek.nvim",
			ft = { "markdown" },
			build = "deno task --quiet build:fast",
			enabled = true,
			config = function()
				require("after.plugin.peek")
				end,
		},

		-- undotree
		{
			"mbbill/undotree",
			keys = "<leader>u",
			event = "BufEnter",
			config = function()
				require("after.plugin.undotree")
				end,
		},

		-- colorscheme
		{
			"rose-pine/neovim",
			name = "rose-pine",
			config = function()
				require("after.plugin.colors")
				end,
		},

		--transparency
		{
			--		"xiyaowong/nvim-transparent",
		},

		-- syntax highlighting
		{
			"nvim-treesitter/nvim-treesitter",
			cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
			build = ":TSUpdate",
			config = function()
				require("after.plugin.treesitter")
				end,
		},

		-- idk
		{
			"nvim-treesitter/playground",
		},

		-- harpoon
		{
			"ThePrimeagen/harpoon",
			event = "BufEnter",
			config = function()
				require("after.plugin.harpoon")
				end,
		},

		-- statusline
		{
			"nvim-lualine/lualine.nvim",
			config = function()
				require("after.plugin.lualine")
				end,
		},

		-- vimwiki for taking notes within vim
		{
			"vimwiki/vimwiki",
			config = function()
				require("after.plugin.vimwiki")
			end,

		},
}
