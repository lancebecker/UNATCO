return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = { },
  config = function()
    local highlight = {
      "RainbowRed",
      "RainbowYellow",
      "RainbowBlue",
      "RainbowOrange",
      "RainbowGreen",
      "RainbowViolet",
      "RainbowCyan",
    }

    local hooks = require "ibl.hooks"
    -- create the highlight groups in the highlight setup hook, so they are reset
    -- every time the colorscheme changes
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#5F3C3F" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#615641" })
      vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#395064" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#5B4A3B" })
      vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#4A5640" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#57405E" })
      vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#365356" })
    end)

    require("ibl").setup {
      indent = { highlight = highlight },
      exclude = {
        filetypes = {
          "help",
          "dashboard",
          "neo-tree",
          "Trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    }
  end,
}
