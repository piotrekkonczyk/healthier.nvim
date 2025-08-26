local M = {}

print('Hello world')

M.setup = function()
  for _ in 10 do
    print('Hello world!')
  end
end

return M
