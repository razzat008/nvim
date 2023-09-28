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
        enabled = false,
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

    -- syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
        build = ":TSUpdate",
        config = function()
            require("after.plugin.treesitter")
        end,
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

    -- lsp 
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
}
