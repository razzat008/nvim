local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

-- to reload this file whenever it gets saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer-setup.lua source <afile> | PackerSync
  augroup end
]])

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	--plugins manager
	use("wbthomason/packer.nvim")

	--theme/colorscheme
	use("Mofiqul/dracula.nvim")

	-- use ctrl to move around windows
	use("christoomey/vim-tmux-navigator")

	-- lightspeed for quick motion
	use("ggandor/lightspeed.nvim")

	-- maximizes/minimizes current window
	use("szw/vim-maximizer")

	-- surround specific words with anything
	use("tpope/vim-surround")
	--
	-- use gcc to comment line
	use("numToStr/Comment.nvim")

	-- provides functions in lua
	use("nvim-lua/plenary.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- fuzzy finding w/ telescope
	-- dependency for better sorting performance
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	-- fuzzy finder
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	--colorizer
	use("norcalli/nvim-colorizer.lua")

	-- indenting lines || autopairs || dashboard
	use("lukas-reineke/indent-blankline.nvim")
	use("windwp/nvim-autopairs")

	--auto completions
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- lsp servers management
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	-- use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- bufferline
	use({ "akinsho/bufferline.nvim", tag = "v3.*" })

	--tree sitter
	use("nvim-treesitter/nvim-treesitter")

	--notification
	use("rcarriga/nvim-notify")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
