local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
vim.o.modifiable = true

vim.opt.number = true
require("lazy").setup({
	spec = {
		{ import = "plugins" },
		{ "lazyvim.plugins.extras.lang.rust" },
		{"lazyvim.utils"}
	},
})

vim.cmd([[colorscheme ayu-mirage]])
require("mason").setup()
require("cmp").setup()
require("harpoon").setup()
require("mason-lspconfig").setup()
require("trouble").setup()
require("neodev").setup({})

local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.intelephense.setup {}
lspconfig.rust_analyzer.setup {
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                runBuildScripts = true,
              },
              checkOnSave = {
                allFeatures = true,
                command = "clippy",
                extraArgs = { "--no-deps" },
              },
              procMacro = {
                enable = true,
                ignored = {
                  ["async-trait"] = { "async_trait" },
                  ["napi-derive"] = { "napi" },
                  ["async-recursion"] = { "async_recursion" },
                },
              },
            },
          },
}

require("inlay-hints").setup({
  only_current_line = true,

  eol = {
    right_align = true,
  }
})

require("rust-tools").setup({
  tools = {
    inlay_hints = {
      auto = true,
    },
  },
  server = {
    on_attach = function(c, b)
      ih.on_attach(c, b)
    end,
  },
})

