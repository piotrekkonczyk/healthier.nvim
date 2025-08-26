local start_screen = require('healthier.ui.start_screen')
local M = {}

M.setup = function()
  print('Hello world!')
end

M.show_start_screen = function()
  start_screen.show_start_screen()
end

return M
