local start_screen = require('healthier.ui.start_screen')
local config = require('healthier.config')
local M = {}

---@param opts Config | nil
M.setup = function(opts)
  opts = opts or config

  if opts.start_screen_config.show_by_default then
    start_screen.show_start_screen()
  end
end

return M
