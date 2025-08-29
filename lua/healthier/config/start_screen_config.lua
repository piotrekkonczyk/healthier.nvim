---@class StartScreenConfig
---@field show_by_default boolean | nil Whether start screen should be shown by default
---@field popup_width integer | nil Width of the start screen
---@field popup_height integer | nil Height of the start screen
---@field show_stats boolean | nil Whether start screen should display stats quickmenu by default
---@field show_quit boolean | nil Whether start screen should display quit quickmenu by default
local start_screen_config = {
  show_by_default = true,
  popup_width = 50,
  popup_height = 10,
  show_stats = true,
  show_quit = true,
}

return start_screen_config
