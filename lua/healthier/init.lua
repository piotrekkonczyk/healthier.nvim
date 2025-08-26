local M = {}

M.hello_world = function()
  error('this throws an error')
end

M.setup = function()
  for _ in 10 do
    print('Hello world!')
  end
end

return M
