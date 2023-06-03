-- https://www.youtube.com/watch?v=ga3Cas7vNCk
-- https://github.com/David-Kunz/vim/blob/0c68ffc4f0b72cfce00334e83fa931fd89717608/init.lua#L491
local dap = require('dap')
vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='🟢', texthl='', linehl='', numhl=''})

vim.keymap.set("n", "<leader>bb", ':DapToggleBreakpoint<CR>' )

dap.adapters.node2 = {
    type = 'executable',
    command = 'node',
    args = { os.getenv('HOME') .. '~/.config/nvim/ext/vscode-node-debug2/out/src/nodeDebug.js'}
}

-- local function debugJest(testName, filename)
--   print("starting " .. testName .. " in " .. filename)
--   dap.run({
--       type = 'node2',
--       request = 'launch',
--       cwd = vim.fn.getcwd(),
--       runtimeArgs = {'--inspect-brk', '/usr/local/bin/jest', '--no-coverage', '-t', testName, '--', filename},
--       sourceMaps = true,
--       protocol = 'inspector',
--       skipFiles = {'<node_internals>/**/*.js'},
--       console = 'integratedTerminal',
--       port = 9229,
--       })
-- end
--
-- local function attach()
--   print("attaching")
--   dap.run({
--       type = 'node2',
--       request = 'attach',
--       cwd = vim.fn.getcwd(),
--       sourceMaps = true,
--       protocol = 'inspector',
--       skipFiles = {'<node_internals>/**/*.js'},
--       })
-- end
--
-- local function attachToRemote()
--   print("attaching")
--   dap.run({
--       type = 'node2',
--       request = 'attach',
--       address = "127.0.0.1",
--       port = 9229,
--       localRoot = vim.fn.getcwd(),
--       remoteRoot = "/home/vcap/app",
--       sourceMaps = true,
--       protocol = 'inspector',
--       skipFiles = {'<node_internals>/**/*.js'},
--       })
-- end
--
-- return {
--   debugJest = debugJest,
--   attach = attach,
--   attachToRemote = attachToRemote,
-- }

-- dap.configurations.javascript = {
--   {
--     name = 'Launch',
--     type = 'node2',
--     request = 'launch',
--     program = '${file}',
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   },
--   {
--     -- For this to work you need to make sure the node process is started with the `--inspect` flag.
--     name = 'Attach to process',
--     type = 'node2',
--     request = 'attach',
--     processId = require'dap.utils'.pick_process,
--   },
-- }
