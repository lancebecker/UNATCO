return {
  'rcarriga/nvim-notify',
  event = "VeryLazy",
  config = function()
    local loaded, notify = pcall(require, "notify")
    if not loaded then
      return
    end

    notify.setup({
      render = "minimal",
      stages = "fade",
      timeout = 2000,
      fps = 30,
    })

    local banned_messages = { "No information available" }
    vim.notify = function(msg, ...)
      for _, banned in ipairs(banned_messages) do
        if msg == banned then
          return
        end
      end
      return require("notify")(msg, ...)
    end

    -- vim.notify = notify
  end,
}
