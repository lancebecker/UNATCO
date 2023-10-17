
local opt = vim.opt

opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers

opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.expandtab = true -- Use spaces instead of tabs
opt.smartindent = true -- Insert indents automatically
opt.smartcase = true -- Don't ignore case with capitals
opt.list = true -- Show some invisible characters (tabs...
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.undofile = true
opt.undolevels = 10000
opt.softtabstop = 4
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.wrap = false -- Disable line wrap
opt.cmdheight = 0
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.hlsearch = false
opt.incsearch = true
opt.scrolloff = 4 -- Lines of context
opt.signcolumn = "yes"
opt.colorcolumn = "80"
opt.splitright = true
opt.splitbelow = true
opt.timeoutlen = 300
opt.showmode = false -- Dont show mode since we have a statusline
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitkeep = "screen"
opt.splitright = true -- Put new windows right of current

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
end

if vim.g.neovide then
  vim.g.neovide_cursor_vfx_mode = "railgun"

  vim.g.neovide_transparency = 1.0

  vim.g.neovide_remember_window_size = true

  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_trail_size = 0.2
  vim.g.neovide_cursor_animate_in_insert_mode = false

  -- Font Choices
  vim.o.guifont = "OverpassM Nerd Font Mono:h16"
  -- vim.o.guifont = "iMWritingMono Nerd Font Mono:h16"
end
