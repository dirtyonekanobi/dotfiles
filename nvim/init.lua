-- inspiration
-- https://raw.githubusercontent.com/nvim-lua/kickstart.nvim/master/init.lua
-- credit: https://github.com/ojroques/dotfiles/blob/master/nvim/.config/nvim/init.lua

require('plugins')


-- colorscheme
vim.g.tokyonight_style = 'night'
vim.cmd[[colorscheme tokyonight]]

-- global settings
vim.g.mapleader = " " -- space is leader
vim.o.number = true -- show line numbers
vim.o.relativenumber = true -- relative numbers
vim.o.wrap = false -- don't wrap text
vim.o.expandtab = true -- tabs vs spaces :)
vim.o.incsearch = true -- incremental search
vim.o.tabstop = 2 -- 2 spaces per tab
vim.o.cursorline = true -- show cursor
vim.o.ignorecase = true -- search case insensitive
vim.o.hlsearch = false -- don't highlight searches
vim.o.swapfile = false -- no swapfile
vim.o.splitbelow = true -- split below
vim.o.splitright = true -- split right
vim.o.scrolloff = 3 -- 3 lines above & below the cursor at least
vim.o.errorbells = false -- error bells suck
vim.o.shiftwidth = 2 -- shift 2
vim.o.numberwidth = 4 -- 4 number width
vim.o.termguicolors = true
vim.o.colorcolumn = '80'
vim.o.showmode = false -- don't show mode line
vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a' -- mouse mode
vim.o.undofile = true -- save undo history
vim.o.completeopt = 'menuone,noselect' -- setup for better completion
vim.g["netrw_banner"] = 0 -- remove NetRW Banner
-- vim.g["netrw_liststyle"] = 2
-- vim.g["netrw_winsize"] = 25

-- keybindings

local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>v', ':Vexplore<CR>') -- vertical split & explore
map('n', '<leader>h', ':Sexplore<CR>') -- split below
map('n', '<C-S>', '%s') -- Ctrl-S as search
map('i', 'jk', '<ESC>') -- jk to leave insert mode
map('n', '<C-N>', ':Lexplore<CR> :vertical resize 30<CR>') -- netrw tree
map('n', '<leader>t', ':sp<CR> :term<CR> :resize 20N<CR> i', {silent = true }) -- create term below
map('n', '<leader><space>', ':Explore<CR>') -- netrw tree
-- <C-HJKL> to move windows
map('n', '<C-J>', '<C-W><C-J>')
map('n', '<C-K>', '<C-W><C-K>')
map('n', '<C-L>', '<C-W><C-L>')
map('n', '<C-H>', '<C-W><C-H>')

-- Telescope Config
local telescope = require("telescope")

telescope.setup{
  pickers = {
    find_files = {
      theme = "ivy",
    }
  }
}

-- telescope searching
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>")
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>")
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>")

