---@class StartScreenConfig
---@field show_by_default boolean
local start_screen_config = {
  show_by_default = true,
}

---@class Config
---@field start_screen_config StartScreenConfig
local config = {
  start_screen_config = start_screen_config,
}

return config
