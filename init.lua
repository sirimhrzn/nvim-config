-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h9"
  -- vim.o.guifont = "SF Mono Powerline:h11"

  vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end

vim.g.blamer_enabled = true
vim.cmd([[colorscheme darcula-dark]])
