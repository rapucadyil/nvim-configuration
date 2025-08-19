-- line numbers and relative line numbers
vim.o.number = true
vim.o.relativenumber = true

vim.g.hav_nerd_font = true

-- show and enable mouse
vim.o.mouse = 'a' 

-- Don't show the mode since it is already in the statusline
vim.o.showmode = false


vim.o.expandtab = true -- Convert tab to space
vim.o.shiftwidth = 4

vim.o.tabstop = 4
vim.o.softtabstop = 4

vim.o.smarttab = true
vim.o.smartindent = true
vim.o.autoindent = true

vim.o.signcolumn = 'yes'

vim.o.cursorline = true

vim.o.confirm = true

vim.o.undofile = true

vim.o.breakindent = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.splitright = true
vim.o.splitbelow = true

-- Make it so that there is a min of 10 or predef number of lines
vim.o.scrolloff = 5 

-- [[Basic Keymaps]]

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostics
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, {desc = 'Open diagnostic [Q]uickfix list'})


-- Keymaps to switch between split windows

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Highlight when yanking

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
