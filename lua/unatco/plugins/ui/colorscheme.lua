-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 	  vim.cmd([[colorscheme gruvbox]])
-- 	end,
-- }

-- return {
--   "catppuccin/nvim", -- latte, frappe, macchiato, mocha
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     local palette = require('catppuccin.palettes').get_palette()
--
--     require("catppuccin").setup({
--       custom_highlights = {
--         LineNr = { fg = palette.lavender },
--         PmenuSel = { bg = palette.mantle, fg = palette.green },
--         PmenuSbar = { bg = palette.lavender },                  -- Popup menu: scrollbar.
--         PmenuThumb = { bg = palette.lavender },                  -- Popup menu: scrollbar.
--         Visual = { bg = palette.surface2, style = { "bold" } },
--         CursorLineNr = { fg = palette.green },
--         WinSeparator = { fg = palette.blue },
--         TelescopeNormal = {
--           bg = palette.transparent_background,
--         },
--         TelescopeSelection = {
--           style = { "italic" },
--           bg = palette.mantle,
--           fg = palette.green,
--         },
--         TelescopePromptNormal = {
--           bg = palette.transparent_background,
--         },
--         TelescopeSelectionCaret = {
--           fg = palette.green,
--         }
--       },
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = {
--           enabled = true
--           -- style = "nvchad"
--         },
--         fidget = true,
--         markdown = true,
--         mason = true,
--         dap = {
--           enabled = true,
--           enabled_ui = true,
--         },
--         indent_blankline = {
--           enabled = true,
--           colored_indent_levels = true,
--         },
--         which_key = true,
--       }
--     })
--     vim.cmd([[colorscheme catppuccin-macchiato]])
--   end,
-- }

-- return {
--   "yorik1984/newpaper.nvim",
--   config = function()
--     vim.cmd([[colorscheme newpaper]])
--   end
-- }

return {
  'uloco/bluloco.nvim',
  lazy = false,
  priority = 1000,
  dependencies = { 'rktjmp/lush.nvim' },
  config = function()
    require("bluloco").setup({
      style = "dark",               -- "auto" | "dark" | "light"
      transparent = false,
      italics = true,
    })
    -- your optional config goes here, see below.
    vim.cmd([[colorscheme bluloco]])
  end,
}
