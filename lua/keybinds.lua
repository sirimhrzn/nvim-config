local telescope = require('telescope.builtin')

-- vim.cmd[[NERDTreeToggle]]
map = vim.keymap.set

-- nvim-telescope --
map('n', '<leader>ff', telescope.find_files, {})
map('n', '<leader>/', telescope.live_grep, {})
map('n', '<leader>fb', telescope.buffers, {})
map('n', '<leader>fs', telescope.grep_string, {})

-- file tree --
map('n', '<leader>e', ':NERDTreeToggle<CR>',{ noremap = true, silent })

-- clipboard --
map('n', 'Y', '"+y', { noremap = true, silent = true })
map('x', 'Y', '"+y', { noremap = true, silent = true })

-- line number --
map('n', '<leader>lf', ':set number!<CR>', { noremap = true, silent = true })

-- barbar / buffer --
map('n','H',':BufferPrevious<CR>',{noremap = true , silent = true})
map('n','L',':BufferNext<CR>',{noremap = true , silent = true})

