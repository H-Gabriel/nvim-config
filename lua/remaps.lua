local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fs", builtin.find_files, {})
vim.keymap.set("n", "<leader><C-h>", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- Move line up
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- Move line down
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- Move selection up
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- Move selection down 
