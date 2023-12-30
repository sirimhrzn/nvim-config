require("config.lazy")

vim.g.blamer_enabled = true
function RustDebug()
  vim.cmd("RustDebuggables")
end

vim.api.nvim_set_keymap("n", "<Leader>rt", [[:lua RustDebug()<CR>]], { noremap = true, silent = true })
vim.cmd([[colorscheme onedark_vivid]])
local dap = require("dap")
require("telescope").load_extension("dap")
