local start_screen_popup = nil

local Popup = require('nui.popup')
local event = require('nui.utils.autocmd').event

local helpers = require('healthier.ui.helpers')

local M = {}

---@param config Config
function M.show_start_screen(config)
  -- NOTE: vim.schedule runs after all other setup events
  vim.schedule(function()
    start_screen_popup = Popup({
      enter = true,
      focusable = true,
      border = {
        style = 'rounded',
        text = { top = ' healthier.nvim ', top_align = 'center' },
      },
      position = '50%',
      size = {
        width = config.start_screen_config.popup_width,
        height = config.start_screen_config.popup_height,
      },
      win_options = {
        winhighlight = 'Normal:Normal,FloatBorder:Normal',
      },
    })

    start_screen_popup:mount()

    local lines = {
      '',
      config.session_config.duration_in_mins .. ' minutes of strong coding ahead!',
      'Stay hydrated, stretch often.',
      '',
    }

    local displayed_text = '[Enter] Start Session'

    if config.start_screen_config.show_stats then
      displayed_text = displayed_text .. '   [h] Stats'
    end

    if config.start_screen_config.show_quit then
      displayed_text = displayed_text .. '   [q] Close'
    end

    table.insert(lines, displayed_text)

    for i, line in ipairs(lines) do
      lines[i] = helpers.center_line(line, config.start_screen_config.popup_width)
    end

    vim.api.nvim_buf_set_lines(start_screen_popup.bufnr, 0, -1, false, lines)

    -- NOTE: Always put cursor on the starting popup window
    vim.api.nvim_set_current_win(start_screen_popup.winid)

    start_screen_popup:on(event.BufLeave, function()
      start_screen_popup:unmount()
    end)

    local map_opts = { noremap = true, silent = true, buffer = start_screen_popup.bufnr }

    vim.keymap.set('n', '<CR>', function()
      start_screen_popup:unmount()
      vim.notify(config.session_config.duration_in_mins .. ' minute session has started')
    end, map_opts)

    if config.start_screen_config.show_stats then
      vim.keymap.set('n', 'h', function()
        start_screen_popup:unmount()
        vim.notify('Stats feature coming soon! 📊')
      end, map_opts)
    end

    if config.start_screen_config.show_quit then
      vim.keymap.set('n', 'q', function()
        start_screen_popup:unmount()
      end, map_opts)
    end
  end)
end

return M
