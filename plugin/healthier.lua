vim.api.nvim_create_user_command('HealthierStart', function()
  package.loaded['healthier'] = nil

  require('healthier').show_start_screen()
end, {})
