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
        config = function()
            require("after.plugin.peek")
        end,
    },

    --easy navigation
    {
        "ggandor/lightspeed.nvim",
        lazy = true,
        enabled = true,
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
        "nvim-lualine/lualine.nvim",
        config = function()
            require("after.plugin.lualine")
        end,
    },

    --lsp zero 
    {
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v2.x',
            lazy = true,
            config = function()
                -- This is where you modify the settings for lsp-zero
                -- Note: autocompletion settings will not take effect

                require('lsp-zero.settings').preset({})
            end
        },

        -- Autocompletion
        {
            'hrsh7th/nvim-cmp',
            event = 'InsertEnter',
            dependencies = {
                {'L3MON4D3/LuaSnip'},
            },
            config = function()
                -- Here is where you configure the autocompletion settings.
                -- The arguments for .extend() have the same shape as `manage_nvim_cmp`: 
                -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/api-reference.md#manage_nvim_cmp

                require('lsp-zero.cmp').extend()

                -- And you can configure cmp even more, if you want to.
                local cmp = require('cmp')
                local cmp_action = require('lsp-zero.cmp').action() 

                cmp.setup({
                    mapping = {
                        ['<C-Space>'] = cmp.mapping.complete(),
                        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
                        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
                    }
                })
            end
        },

        -- LSP
        {
            'neovim/nvim-lspconfig',
            cmd = 'LspInfo',
            event = {'BufReadPre', 'BufNewFile'},
            dependencies = {
                {'hrsh7th/cmp-nvim-lsp'},
                {'williamboman/mason-lspconfig.nvim'},
                {
                    'williamboman/mason.nvim',
                    build = function()
                        pcall(vim.cmd, 'MasonUpdate')
                    end,
                },
            },
            config = function()
                -- This is where all the LSP shenanigans will live

                local lsp = require('lsp-zero')

                lsp.on_attach(function(client, bufnr)
                    lsp.default_keymaps({buffer = bufnr})
                end)

                -- (Optional) Configure lua language server for neovim
                require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

                lsp.setup()
            end
        }
    }

}
