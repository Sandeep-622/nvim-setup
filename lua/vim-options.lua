
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader= " "

-- Enable system clipboard integration
vim.opt.clipboard = "unnamedplus"

-- Set Python 3 provider
vim.g.python3_host_prog = "/usr/bin/python3"
