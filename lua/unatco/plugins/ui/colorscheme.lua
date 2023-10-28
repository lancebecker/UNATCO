-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 	  vim.cmd([[colorscheme gruvbox]])
-- 	end,
-- }

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavor = "macchiato",
      integrations = {
        telescope = {
          enabled = true,
          style = "nvchad"
        }
      }
    })
    vim.cmd([[colorscheme catppuccin-macchiato]])
  end,
}
