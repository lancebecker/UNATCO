vim.g.mapleader = ","

-- My personal escape preference. Beware it's odd
vim.keymap.set("i", "<S-Space>", "<esc>", { silent = true })

vim.keymap.set("n", "H", "0")
vim.keymap.set("n", "L", "$")

-- <tab> / <s-tab> | Circular windows navigation
vim.keymap.set("n", "<tab>", "<c-w>w")
vim.keymap.set("n", "<S-tab>", "<c-w>W")

-- Improved move commands
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Maintain cursor position using J
vim.keymap.set("n", "J", "mzJ`z")

-- Maintain cursor position with half-page moves
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor centered when applying searches
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Maintain paste value and throw replacement into void
vim.keymap.set("x", "<leader>p", '"_dP')

-- Yank to system clipboard / credit: asbjornHaland
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Substitute on cursor word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Clear search with <esc>
vim.keymap.set("n", "<esc>", "<cmd>noh<cr><esc>")
vim.keymap.set("i", "<esc>", "<cmd>noh<cr><esc>")

if vim.g.neovide then
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end


-- Hack to set the CD
vim.keymap.set("n", "<leader><leader>c", ":cd %:h<cr>")
