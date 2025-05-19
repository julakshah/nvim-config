local global = vim.g
local o = vim.opt

-- Editor options

o.number = true -- Print line numbers
o.relativenumber = true -- Make line numbers relative
o.clipboard = "unnamedplus" -- Uses the system clipboard for everything but yank
o.autoindent = true -- Persists indent from current line to next line
o.cursorline = true -- Highlights the line the cursor is on
o.expandtab = true -- Makes <Tab> insert spaces
o.shiftwidth = 8 -- Number of spaces for each step of autoindent(?)
o.tabstop = 8 -- Number of spaces for <Tab> in a file
o.ruler = true -- Line and column number of cursor displayed
o.ttimeoutlen = 0 -- The time in milliseconds that is waited to complete a command
o.wildmenu = true -- Makes command line completion operate in enhanced mode. Allows for completion cycling
o.showcmd = true -- Shows commands you are in the process of typing
o.showmatch = false -- Shows the matching bracket and phase cursor there for a moment
o.termguicolors = true -- Enables support for RGB colors
o.encoding = "UTF-8"
o.hidden = true -- Allow hidden buffers for toggleterm
