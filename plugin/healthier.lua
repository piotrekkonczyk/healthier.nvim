vim.api.nvim_create_user_command('HealthierStart', function()
  package.loaded['healthier'] = nil

  require('healthier').setup()
end, {})
