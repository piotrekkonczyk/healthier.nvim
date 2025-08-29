local start_screen_config = require('healthier.config.start_screen_config')
local session_config = require('healthier.config.session_config')

---@class Config
---@field start_screen_config StartScreenConfig
---@field session_config SessionConfig
local config = {
  start_screen_config = start_screen_config,
  session_config = session_config,
}

return config
