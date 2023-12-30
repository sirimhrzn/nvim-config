return {
  {

    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        -- ...
      })
    end,
  },
  {
    "APZelos/blamer.nvim",
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "simrat39/rust-tools.nvim",
  },
  {
    "declancm/cinnamon.nvim",
  },
  {
    "edluffy/specs.nvim",
  },
  {
    "ThePrimeagen/harpoon",
  },
  {
    "folke/zen-mode.nvim",
  },
  { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } },
  { "folke/neodev.nvim", opts = {} },
  { "theHamsta/nvim-dap-virtual-text" },
  { "nvim-telescope/telescope-dap.nvim" },
}
