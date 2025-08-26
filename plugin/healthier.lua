vim.api.nvim_create_user_command('Healthier', function()
  require('healthier').setup()
end, {})
