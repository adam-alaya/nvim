require("neotest").setup({
    adapters = {
        -- require("neotest-python")({
        --     dap = { justMyCode = false },
        -- }),
        -- require("neotest-plenary"),
        -- require("neotest-vim-test")({
        --     ignore_file_types = { "python", "vim", "lua" },
        -- }),
        require('neotest-jest')({
            jestCommand = "npm test --",
            jestConfigFile = "custom.jest.config.ts",
            env = { CI = true },
            cwd = function(path)
                return vim.fn.getcwd()
            end,
        }),
    },
})

vim.keymap.set("n", "<leader>tb", ':lua require("neotest").run.run({ strategy = "dap" })<CR>')
vim.keymap.set("n", "<leader>tt", ':lua require("neotest").run.run({ strategy = "dap" })<CR>')
vim.keymap.set("n", "<leader>tT", ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>')

-- vim.keymap.set("n", "<leader>tT", vim.cmd.TestFile)
-- vim.keymap.set("n", "<leader>ta", vim.cmd.TestSuite)
-- vim.keymap.set("n", "<leader>tl", vim.cmd.TestLast)
-- vim.keymap.set("n", "<leader>tg", vim.cmd.TestVisit)

-- Run the nearest test
-- require("neotest").run.run()
-- -- Run the current file
-- require("neotest").run.run(vim.fn.expand("%"))
--
-- -- Debug the nearest test (requires nvim-dap and adapter support)
-- require("neotest").run.run({strategy = "dap"})
--
-- -- See :h neotest.run.run() for parameters.
-- -- Stop the nearest test, see :h neotest.run.stop()
-- require("neotest").run.stop()
--
-- -- Attach to the nearest test, see :h neotest.run.attach()
--
-- require("neotest").run.attach()
