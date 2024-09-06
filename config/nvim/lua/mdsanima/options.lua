-- Custom configuration setting options.

require "nvchad.options"

local o = vim.o

-- Base options
o.autoindent = true
o.autoread = true
o.backup = true
o.clipboard = "unnamedplus"
o.colorcolumn = "100"
o.encoding = "utf-8"
o.expandtab = true
o.guicursor = "n:blinkon200,i-ci-ve:ver25"
o.history = 1000
o.ignorecase = true
o.incsearch = true
o.linespace = 100
o.linebreak = true
o.list = true
o.listchars = "extends:→,precedes:←,nbsp:·,trail:·,tab:» ,"
o.mouse = "a"
o.number = true
o.relativenumber = true
o.scrolloff = 8
o.shiftwidth = 4
o.showbreak = "↪ "
o.smartcase = true
o.splitbelow = true
o.splitright = true
o.tabstop = 4
o.undofile = true
o.writebackup = true

-- Base dirs
o.backupdir = vim.fn.stdpath "cache" .. "/backup/"
o.directory = vim.fn.stdpath "cache" .. "/swap/"
o.undodir = vim.fn.stdpath "cache" .. "/undo/"
o.viewdir = vim.fn.stdpath "cache" .. "/view/"
