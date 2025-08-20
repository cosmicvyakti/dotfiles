-- NOTE: handled by colorscheme.lua file
-- for theme and background transparency
-- vim.cmd.colorscheme('unokai')
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })


-- Basic settings
vim.o.number = true                              -- Line numbersoptio
vim.o.relativenumber = true                      -- Relative line numbers
vim.o.cursorline = true                          -- Highlight current line
vim.o.wrap = false                               -- Don't wrap lines
vim.o.scrolloff = 10                             -- Keep 10 lines above/below cursor 
vim.opt.sidescrolloff = 8                        -- Keep 8 columns left/right of cursor

-- Indentation
vim.o.tabstop = 2                                -- Tab width
vim.o.shiftwidth = 2                             -- Indent width
vim.o.softtabstop = 2                            -- Soft tab stop
vim.o.expandtab = true                           -- Use spaces instead of tabs
vim.o.smartindent = true                         -- Smart auto-indenting
vim.o.autoindent = true                          -- Copy indent from current line

-- Search settings
vim.o.ignorecase = true                          -- Case insensitive search
vim.o.smartcase = true                           -- Case sensitive if uppercase in search
vim.o.hlsearch = false                           -- Don't highlight search results 
vim.o.incsearch = true                           -- Show matches as you type


-- Visual settings
vim.o.termguicolors = true                       -- Enable 24-bit colors
vim.o.signcolumn = "yes"                         -- Always show sign column
vim.o.colorcolumn = "100"                        -- Show column at 100 characters
vim.o.showmatch = true                           -- Highlight matching brackets
vim.o.matchtime = 2                              -- How long to show matching bracket
vim.o.cmdheight = 1                              -- Command line height
vim.o.completeopt = "menuone,noinsert,noselect"  -- Completion options 
vim.o.showmode = false                           -- Don't show mode in command line 
vim.o.pumheight = 10                             -- Popup menu height 
vim.o.pumblend = 10                              -- Popup menu transparency 
vim.o.winblend = 0                               -- Floating window transparency 
vim.o.conceallevel = 0                           -- Don't hide markup 
vim.o.concealcursor = ""                         -- Don't hide cursor line markup 
vim.o.lazyredraw = true                          -- Don't redraw during macros
vim.o.synmaxcol = 300                            -- Syntax highlighting limit

-- File handling
vim.o.backup = false                             -- Don't create backup files
vim.o.writebackup = false                        -- Don't create backup before writing
vim.o.swapfile = false                           -- Don't create swap files
vim.o.undofile = true                            -- Persistent undo
vim.o.undodir = vim.fn.expand("~/.vim/undodir")  -- Undo directory
vim.o.updatetime = 300                           -- Faster completion
vim.o.timeoutlen = 500                           -- Key timeout duration
vim.o.ttimeoutlen = 0                            -- Key code timeout
vim.o.autoread = true                            -- Auto reload files changed outside vim
vim.o.autowrite = false                          -- Don't auto save

-- Behavior settings
vim.o.hidden = true                              -- Allow hidden buffers
vim.o.errorbells = false                         -- No error bells
vim.o.backspace = "indent,eol,start"             -- Better backspace behavior
vim.o.autochdir = false                          -- Don't auto change directory
-- vim.opt.iskeyword:append("-")                      -- Treat dash as part of word
-- vim.o.path:append("**")                          -- include subdirectories in search
vim.o.selection = "exclusive"                    -- Selection behavior
vim.o.mouse = "a"                                -- Enable mouse support
vim.o.clipboard = "unnamedplus"                   -- Use system clipboard
vim.o.modifiable = true                          -- Allow buffer modifications
vim.o.encoding = "UTF-8"                         -- Set encoding

-- Set tabs and indentatio
vim.o.guicursor = "n-v-c:block,i:ver25-blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"

-- split windows
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.winborder = "rounded"
