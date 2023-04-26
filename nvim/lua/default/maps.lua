local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Incriment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backword
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Create new tab
keymap.set('n', 'te', ':tabedit<CR>', { silent = true })

-- Window split
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })

-- Window virtical split
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Moving through window
keymap.set('n', '<Tab>', '<C-w>w')
-- Move left
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 'sh', '<C-w>h')
-- Move up
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 'sk', '<C-w>k')
-- Move down
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 'sj', '<C-w>j')
-- Move right
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sl', '<C-w>l')

-- Resizing window
keymap.set('n', '<C-w><left>', '<C-w>>')
keymap.set('n', '<C-w><right>', '<C-w><')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Save current tab
keymap.set('n', '<C-s>', ':w<CR>', { silent = true })

-- Move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- NvimTree
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
keymap.set('n', '<leader>r', ':NvimTreeRefresh<CR>', { silent = true })
keymap.set('n', '<leader>f', ':NvimTreeFocus<CR>', { silent = true })


-- Bufferline
keymap.set('n', 'gb', '<CMD>BufferLinePick<CR>')
keymap.set('n', '<leader>ts', '<CMD>BufferLinePickClose<CR>')
keymap.set('n', '<S-l>', '<CMD>BufferLineCycleNext<CR>')
keymap.set('n', '<S-h>', '<CMD>BufferLineCyclePrev<CR>')
keymap.set('n', ']b', '<CMD>BufferLineMoveNext<CR>')
keymap.set('n', '[b', '<CMD>BufferLineMovePrev<CR>')
keymap.set('n', 'gs', '<CMD>BufferLineSortByDirectory<CR>')
