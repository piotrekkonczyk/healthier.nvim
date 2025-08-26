local start_screen = require('healthier.ui.start_screen')
local config = require('healthier.config')
local M = {}

M.setup = function(opts)
  opts = opts or config

  if opts.show_start_screen then
    start_screen.show_start_screen()
  end
end

return M
