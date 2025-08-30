local eq = assert.are.same

describe('healthier.nvim basic tests', function()
  it('loads the plugin without errors', function()
    local ok, healthier = pcall(require, 'healthier')
    eq(true, ok)
    eq('table', type(healthier))
  end)

  it('has a setup function', function()
    local healthier = require('healthier')
    eq('function', type(healthier.setup))
  end)

  it('respects default config', function()
    local healthier = require('healthier')
    healthier.setup()
  end)
end)
