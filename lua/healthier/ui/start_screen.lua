local start_screen_popup = nil
local Popup = require('nui.popup')
local event = require('nui.utils.autocmd').event

local M = {}

function M.show_start_screen()
  start_screen_popup = Popup({
    enter = true,
    focusable = true,
    border = {
      style = 'rounded',
      text = { top = ' healthier.nvim 🔥 ', top_align = 'center' },
    },
    position = '50%',
    size = {
      width = 50,
      height = 10,
    },
    win_options = {
      winhighlight = 'Normal:Normal,FloatBorder:Normal',
    },
  })

  start_screen_popup:mount()

  -- Insert content
  vim.api.nvim_buf_set_lines(start_screen_popup.bufnr, 0, -1, false, {
    '20 minutes of strong coding ahead!',
    'Stay hydrated, stretch often.',
    '',
    '[<CR>] Start Session   [h] Stats   [q] Close',
  })

  -- Close when buffer is hidden or on exit
  start_screen_popup:on(event.BufLeave, function()
    start_screen_popup:unmount()
  end)

  -- Keymaps for interactions
  local map_opts = { noremap = true, silent = true, buffer = start_screen_popup.bufnr }

  vim.keymap.set('n', '<CR>', function()
    start_screen_popup:unmount()
    vim.notify('Start session')
  end, map_opts)

  vim.keymap.set('n', 'h', function()
    start_screen_popup:unmount()
    vim.notify('Stats feature coming soon! 📊')
  end, map_opts)

  vim.keymap.set('n', 'q', function()
    start_screen_popup:unmount()
  end, map_opts)
end

return M
