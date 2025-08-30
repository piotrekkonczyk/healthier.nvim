vim.opt.rtp:prepend(vim.fn.expand('~/.local/share/nvim/lazy/nui.nvim'))
vim.opt.rtp:append('.')
vim.opt.rtp:append(vim.fn.expand('~/.local/share/nvim/lazy/plenary.nvim/'))

require('plenary.test_harness')
