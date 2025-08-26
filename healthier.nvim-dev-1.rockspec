rockspec_format = '3.0'
package = 'healthier.nvim'
version = 'dev-1'
source = {
  url = 'git+https://github.com/piotrekkonczyk/healthier.nvim',
}
build = {
  type = 'builtin',
  modules = {
    healthier = 'lua/healthier/init.lua',
  },
}
test = {
  type = 'busted',
}
