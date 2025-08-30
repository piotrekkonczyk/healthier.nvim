---@class BreakConfig
---@field duration_in_mins integer | nil Length of break (default 5)
---@field message string | nil Message visible in popup (default "Great work out there! Let's take a short break now")

---@class StretchConfig
---@field interval_in_mins integer | nil Frequency of stretching reminders in minutes (default 5)
---@field message string | nil Message visible in popup (default "Take a quick stretch! 💪)

---@class SessionConfig
---@field duration_in_mins integer | nil Session duration in minutes (default is 20)
---@field break_config BreakConfig | nil Configuration for breaks between sessions
---@field stretch_config StretchConfig | nil Configuration for stretching during session
local session_config = {
  duration_in_mins = 20,
  break_config = {
    duration_in_mins = 5,
    message = "Great work out there! Let's take a short break now",
  },
  stretch_config = {
    interval_in_mins = 5,
    message = 'Take a quick stretch! 💪',
  },
}

return session_config
