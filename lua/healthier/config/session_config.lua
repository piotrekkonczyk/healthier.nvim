---@class SessionConfig
---@field duration_in_mins integer | nil Session duration in minutes (default is 20)
---@field stretch_interval_in_mins integer | nil Interval for stretch reminders (default is 5)
---@field break_duration_mins integer | nil Length of break (default 5)
local session_config = {
  duration_in_mins = 20,
  stretch_interval_in_mins = 5,
  break_duration_mins = 5,
}

return session_config
