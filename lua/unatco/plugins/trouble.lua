return {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
 },
  config = function()
    local trouble = require("trouble")
    local keymap = vim.keymap
    keymap.set("n", "<leader>xx", function() trouble.toggle() end)
    keymap.set("n", "gR", function() trouble.toggle("lsp_references") end)
  end
}
