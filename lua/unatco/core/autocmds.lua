-- Stop newline comment continuation
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions - { "r", "o", "t", "c" }
  end,
  desc = "Disable comment continuation",
})
