-- TODO: Clean up formatting
--- CMAKE COMMANDS ---
-- DEBUG BUILDS
vim.keymap.set('n', '<leader>mc', function()
  vim.cmd 'vsp | term cmake -DCMAKE_BUILD_TYPE=Debug -B build/debug'
end, { desc = 'Open terminal, c[m]ake [c]reate /build/debug directory [cmake -B build/debug].' })

vim.keymap.set('n', '<leader>mb', function()
  vim.cmd 'vsp | term cmake --build build/debug'
end, { desc = 'Open terminal, c[m]ake [b]uild project [cmake --build build/debug]' })

vim.keymap.set('n', '<leader>mr', function()
  vim.cmd 'vsp | term cmake --build build/debug --target run'
end, { desc = 'Open terminal, c[m]ake [r]un binary target, WILL NOT REBUILD [cmake --build build/debug --target run] ! requires phony target called run' })

vim.keymap.set('n', '<leader>ma', function()
  vim.cmd 'vsp | term cmake --build build/debug && cmake --build build/debug --target run'
end, {
  desc = 'Open terminal, c[m]ake build [a]nd run binary target [cmake --build build/debug && cmake --build build/debug --target run] ! requires phony target called run',
})

vim.keymap.set('n', '<leader>mf', function()
  vim.cmd 'vsp | term cmake -DCMAKE_BUILD_TYPE=Debug -B build/debug && cmake --build build/debug && cmake --build build/debug --target run'
end, {
  desc = 'Open terminal, c[m]ake [f]ull build: create build directories, build, and run binary target [cmake -B build/debug && cmake --build build/debug && cmake --build build/debug --target run] ! requires phony target called run',
})

-- RELEASE BUILDS
vim.keymap.set('n', '<leader>mRc', function()
  vim.cmd 'vsp | term cmake -DCMAKE_BUILD_TYPE=Release -B build/release'
end, { desc = 'Open terminal, c[m]ake [R]elease build, [c]reate /build/release directory [cmake -B build/release].' })

vim.keymap.set('n', '<leader>mRb', function()
  vim.cmd 'vsp | term cmake --build build/release'
end, { desc = 'Open terminal, c[m]ake [R]elease [b]uild project [cmake --build build/release]' })

vim.keymap.set('n', '<leader>mRr', function()
  vim.cmd 'vsp | term cmake --build build/release --target run'
end, { desc = 'Open terminal, c[m]ake [R]elease build [r]un binary target, WILL NOT REBUILD [cmake --build build/release --target run] ! requires phony target called run', })

vim.keymap.set('n', '<leader>mRa', function()
  vim.cmd 'vsp | term cmake --build build/release && cmake --build build/release --target run'
end, {
  desc = 'Open terminal, c[m]ake [R]elease build [a]nd run binary target [cmake --build build/release && cmake --build build/release --target run] ! requires phony target called run',
})

vim.keymap.set('n', '<leader>mRf', function()
  vim.cmd 'vsp | term cmake -DCMAKE_BUILD_TYPE=Release -B build/release && cmake --build build/release && cmake --build build/release --target run'
end, {
  desc = 'Open terminal, c[m]ake [R]elease [f]ull build: create build directories, build, and run binary target [cmake -B build/release && cmake --build build/release && cmake --build build/release --target run] ! requires phony target called run',
})

-- CMAKE TESTING
-- TODO: I don't remember what this function is or why I made it.
local function cd_build_and_ctest()
  vim.cmd 'vsp | term'
  vim.cmd 'normal! Acd build'
  vim.cmd 'ctest --verbose'
end

vim.keymap.set('n', '<leader>mt', function()
  -- vim.cmd 'vsp | term cmake --build build --target test --verbose'
  vim.cmd 'vsp | term cmake --build build/debug && cd build/debug && ctest --verbose'
end, {
  desc = 'Open terminal, c[m]ake build project, run c[t]est',
})
vim.keymap.set('n', '<leader>mRt', function()
  -- vim.cmd 'vsp | term cmake --build build --target test --verbose'
  vim.cmd 'vsp | term cmake --build build/release && cd build/release && ctest --verbose'
end, {
  desc = 'Open terminal, c[m]ake build project, run c[t]est',
})

-- -- works, but too spooky for me.
-- vim.keymap.set('n', '<leader>m<del>rm!', function()
--   vim.cmd 'vsp | term rm -rf bin build'
-- end, { desc = 'CAUTION. Open terminal, rm -rf bin and build directories [rm -rf bin build]' })
--- ---

