vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "KJ", "<Esc>A<CR>")
vim.keymap.set("i", "LK", "<Esc>A")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:/<C-r><C-w>]])
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set("n", "<leader>tt", '<cmd>FloatermNew --autoclose=3 npm run test -- %:t<CR>')
vim.keymap.set("n", "<leader>e", '<cmd>:FloatermNew --autoclose=3 go run .<CR>')
vim.keymap.set("n", "<leader>er", '<cmd>:FloatermNew<CR>')

-- Debugging keymaps
vim.keymap.set( "n", "<leader>dt", ":lua require('dap-go').debug_test()<CR>")
vim.keymap.set( "n", "<leader>dd", ":lua require('dapui').toggle()<CR>" )
vim.keymap.set( "n", "<leader>b", ":lua require('dap').toggle_breakpoint()<CR>" )
vim.keymap.set( "n", "<leader>c", ":lua require('dap').continue()<CR>" )

vim.keymap.set( "n", "<F1>", ":lua require('dap').step_over()<CR>" )
vim.keymap.set( "n", "<F2>", ":lua require('dap').step_into()<CR>" )
vim.keymap.set( "n", "<F3>", ":lua require('dap').step_out()<CR>" )

vim.keymap.set( "n", "<Leader>dsv", ":lua require('dap').step_over()<CR>" )
vim.keymap.set( "n", "<Leader>dsi", ":lua require('dap').step_into()<CR>" )
vim.keymap.set( "n", "<Leader>dso", ":lua require('dap').step_out()<CR>" )

vim.keymap.set( "n", "<Leader>dhh", ":lua require('dap.ui.variables').hover()<CR>" )
vim.keymap.set( "v", "<Leader>dhv", ":lua require('dap.ui.variables').visual_hover()<CR>" )

vim.keymap.set( "n", "<Leader>duh", ":lua require('dap.ui.widgets').hover()<CR>" )
vim.keymap.set( "n", "<Leader>duf", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>" )

vim.keymap.set( "n", "<Leader>dro", ":lua require('dap').repl.open()<CR>" )
vim.keymap.set( "n", "<Leader>drl", ":lua require('dap').repl.run_last()<CR>" )

vim.keymap.set( "n", "<Leader>dbc", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>" )
vim.keymap.set( "n", "<Leader>dbm", ":lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') )<CR>" )
vim.keymap.set( "n", "<Leader>dbt", ":lua require('dap').toggle_breakpoint()<CR>" )

vim.keymap.set( "n", "<F6>", ":lua require('dap.ui.variables').scopes()<CR>" )
vim.keymap.set( "n", "<Leader>di", ":lua require('dapui').toggle()<CR>" )
vim.keymap.set( "n", "<Leader>dsc", ":lua require('dap').continue()<CR>" )

vim.keymap.set( "t", "<ESC>", '<C-\\><C-n>')
vim.keymap.set( "n", "<C-m>", ':belowright split |terminal<CR>')
vim.keymap.set("n", "<CR>", "<nop>")

-- Marks
vim.keymap.set("n", "<leader>mh", "mH")
vim.keymap.set("n", "<leader>mj", "mJ")
vim.keymap.set("n", "<leader>mk", "mK")
vim.keymap.set("n", "<leader>ml", "mL")
--
vim.keymap.set("n", "<leader>h", "'H")
vim.keymap.set("n", "<leader>j", "'J")
vim.keymap.set("n", "<leader>k", "'K")
vim.keymap.set("n", "<leader>l", "'L")
