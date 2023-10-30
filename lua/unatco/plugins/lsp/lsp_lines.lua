return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  keys = {
    { "<leader><leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines"} }

  },
  config = function()
    vim.diagnostic.config({
      virtual_text = false,
      only_current_line = true
    })
    require("lsp_lines").setup()
  end
}
