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
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
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

opt.guifont = "OverpassM Nerd Font Mono:h14"

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
end

if vim.g.neovide then
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_transparency = 1.0
  vim.g.neovide_remember_window_size = true
end
