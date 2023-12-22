return {
  "stevearc/dressing.nvim",
  opts = {},
  config = function()
    local dressing = require("dressing")
    dressing.setup({
      input = {
        start_in_insert = false,
        relative = "cursor",
        -- win_options = {
        --   winhighlight = "NormalFLoat:DiagnosticWarning"
        -- }
      }
    })
  end
}
