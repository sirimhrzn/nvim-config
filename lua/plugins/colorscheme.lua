return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  { "ellisonleao/gruvbox.nvim", priority = 1000 },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
    "xiantang/darcula-dark.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "felipeagc/fleet-theme-nvim",
    config = function()
      --     vim.cmd("colorscheme fleet")
    end,
  },
  {
    "Mofiqul/adwaita.nvim",
    lazy = false,
    priority = 1000,

    -- configure and set on startup
    config = function()
      vim.g.adwaita_darker = true -- for darker version
      vim.g.adwaita_disable_cursorline = true -- to disable cursorline
      --  vim.g.adwaita_transparent = true -- makes the background transparent
      --  vim.cmd("colorscheme adwaita")
    end,
  },
  {
    "Mofiqul/vscode.nvim",
  },
}
