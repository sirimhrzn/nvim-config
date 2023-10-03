-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h9"
  -- vim.o.guifont = "SF Mono Powerline:h11"

  vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end

vim.g.blamer_enabled = true
function RunMyCommand()
  -- Replace 'your_command_here' with the actual Vim command you want to run
  vim.cmd("RustDebuggables")
end

-- Create a custom key mapping for Leader key + rt to trigger the function
vim.api.nvim_set_keymap("n", "<Leader>rt", [[:lua RunMyCommand()<CR>]], { noremap = true, silent = true })
-- vim.cmd([[colorscheme darcula-dark]])
vim.cmd([[colorscheme vscode]])
