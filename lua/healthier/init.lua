local start_screen = require('healthier.ui.start_screen')
local config = require('healthier.config')
local M = {}

---@param opts Config | nil
M.setup = function(opts)
  -- NOTE: Merging default options with what was passed
  opts = vim.tbl_deep_extend('force', {}, config, opts or {})

  vim.api.nvim_create_user_command('HealthierStart', function()
    require('healthier').setup(opts)
  end, {})

  if opts.start_screen_config.show_by_default then
    start_screen.show_start_screen(opts)
  end
end

return M
