-- Each entry can be:
-- * the name of a detector function like `lsp` or `cwd`
-- * a pattern or array of patterns like `.git` or `lua`.
-- * a function with signature `function(buf) -> string|string[]`
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

local opt = vim.opt

opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.expandtab = true -- Use spaces instead of tabs
opt.smartindent = true -- Insert indents automatically
opt.smartcase = true -- Don't ignore case with capitals
opt.list = true -- Show some invisible characters (tabs...
opt.termguicolors = true -- True color support
opt.shiftround = true -- Round indent
opt.tabstop = 2 -- Number of spaces tabs count for
opt.shiftwidth = 2 -- Size of an indent
opt.softtabstop = 2 -- Sets the number of columns for a TAB
opt.wrap = false -- Disable line wrap
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.scrolloff = 4 -- Lines of context
opt.showmode = false -- Dont show mode since we have a statusline
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.undofile = true
opt.undolevels = 10000
opt.splitkeep = "screen"
opt.timeoutlen = 300
opt.spelllang = { "en" }
opt.swapfile = false
opt.backup = false
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}

opt.listchars = { trail = '⇲', tab = '»»' }
opt.list = true

opt.guifont = "OverpassM Nerd Font Mono:h16"
-- opt.guifont = "JetBrainsMono Nerd Font:h15"

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
end

if vim.g.neovide then
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_transparency = 1 
  vim.g.neovide_remember_window_size = true

  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_trail_size = 0.2
  vim.g.neovide_cursor_animate_in_insert_mode = false

  -- vim.opt.linespace = 5
end

-- make comments and HTML attributes italic
vim.cmd([[highlight Comment cterm=italic term=italic gui=italic]])
vim.cmd([[highlight htmlArg cterm=italic term=italic gui=italic]])
vim.cmd([[highlight xmlAttrib cterm=italic term=italic gui=italic]])
vim.cmd([[highlight Normal ctermbg=none]])
