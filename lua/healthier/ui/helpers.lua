local M = {}

M.center_line = function(line, width)
  local len = vim.fn.strdisplaywidth(line)
  if len >= width then
    return line
  end
  local padding = math.floor((width - len) / 2)
  return string.rep(' ', padding) .. line
end

return M
