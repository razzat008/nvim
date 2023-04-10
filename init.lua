require("razzat")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
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
		config = function()
			require("after.plugin.peek")
		end,
	},

	--easy navigation
	{
		"ggandor/lightspeed.nvim",
		lazy = true,
		enabled = false,
		config = function()
			require("after.plugin.lightspeed")
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
     'nvim-lualine/lualine.nvim',
     config = function()
         require "after.plugin.lualine"
     end,
 },

 
 {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      build = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
},

}

require("lazy").setup(plugins)

