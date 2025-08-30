#!/usr/bin/env bash

nvim --headless \
  -u ./test/minimal_init.lua \
  -c "lua require('plenary.test_harness').test_directory('./test', { minimal_init = './test/minimal_init.lua' })" \
  -c "qa"
