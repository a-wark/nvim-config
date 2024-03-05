local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- mode is already displayed in status line
opt.showmode = false

-- display of whitespaces
opt.list = true
opt.listchars = {
  tab = "» ",
  extends = "⟩",
  precedes = "⟨",
  trail = "·",
  nbsp = "␣",
}

-- minimal number of lines to keep above and below the cursor
opt.scrolloff = 8
