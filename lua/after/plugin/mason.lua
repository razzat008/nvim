require("mason").setup()

local mason = require("mason-lspconfig")

local option = {
    automatic_installation = true,
    ensure_installed = {
		"lua_ls",
		"html-lsp",
		"css-lsp",
		"clangd",
    },

  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ﮊ",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },

  max_concurrent_installers = 10,
}

return mason.setup(option)
