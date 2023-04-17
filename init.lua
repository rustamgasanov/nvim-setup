require('plugins')

-- <Space> is <Leader>
vim.g.mapleader = " "

-- Main config
vim.opt.clipboard = "unnamed" -- yank goes to clipboard
vim.opt.number = true -- display line numbers
vim.opt.autoindent = true -- copy indent from prev line
vim.opt.tabstop = 2 -- set tab to 2 spaces
vim.opt.shiftwidth = 2 -- set '>>' and '<<' spacing indent
vim.opt.ignorecase = true -- ignore case in search
vim.opt.hlsearch = true -- highlight all search matches
vim.opt.smartcase = true -- pay attention to case when caps are used
vim.opt.incsearch = true -- show search results as I type
vim.opt.ttimeoutlen = 100 -- decrease timeout for faster insert with 'O'
vim.opt.ruler = true -- show row and column in footer
vim.opt.scrolloff = 2 -- minimum lines above/below cursor
vim.opt.laststatus = 2 -- always show status bar
vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.listchars = "tab:»·,nbsp:·,trail:·,extends:>,precedes:<"
vim.opt.list = true -- display unprintable characters

-- On save, remove trailing lines and whitespaces(or use :ALEFix)
vim.cmd("let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'] }")
vim.g.ale_fix_on_save = 1

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map("n", shortcut, command)
end

function imap(shortcut, command)
  map("i", shortcut, command)
end

function vmap(shortcut, command)
  map("v", shortcut, command)
end

function cmap(shortcut, command)
  map("c", shortcut, command)
end

function tmap(shortcut, command)
  map("t", shortcut, command)
end

-- Mappings
-- <Space> + <Space> = NvimTree
nmap("<Leader><Leader>", ":NvimTreeToggle<CR>")
-- <Space> + <f>     = Telescope search
nmap("<Leader>f", "<CMD>Telescope find_files<CR>")
-- <Ctrl> + <\>      = Open console
require("toggleterm").setup{ direction = "horizontal", size = 15, open_mapping = [[<C-\>]] }

vim.cmd("colorscheme tokyonight-storm")