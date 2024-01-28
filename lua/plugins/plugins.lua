return {
  {
    "APZelos/blamer.nvim",
  },
  {
    "simrat39/rust-tools.nvim",
  },
  {
    "folke/zen-mode.nvim",
  },
  {'nvim-telescope/telescope.nvim',
  	tag = '0.1.5',
      	dependencies = { 'nvim-lua/plenary.nvim' }
  },

  { "folke/neodev.nvim", opts = {} },

{"preservim/nerdtree"},
	{
  "karb94/neoscroll.nvim",
  config = function ()
    require('neoscroll').setup {}
  end
}, 
	{ "Aszarsha/elysian.vim" },
	{ "navarasu/onedark.nvim" },
	{ "rebelot/kanagawa.nvim"},
	{ "Shatur/neovim-ayu"},
	{
    "folke/trouble.nvim",
  },
  {'simrat39/inlay-hints.nvim'}
}
