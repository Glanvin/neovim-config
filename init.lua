vim.cmd([[
  filetype plugin indent on
  syntax on
]])
vim.g.mapleader = " "

require("config.lazy")
require("config.keymaps")
require("config.lsp")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
