--Glavin's Keymaps
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit window" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("n", "<leader>jk", vim.cmd.Ex, { desc = "Ex" })
vim.keymap.set("n", "<leader>mn", vim.cmd.exit, { desc = "exit" })
--Telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fgf', builtin.git_files, { desc = 'Telescope find git files' })
--Neotree
vim.keymap.set('n', '<leader>e', ':Neotree reveal<CR>')
vim.keymap.set('n', '<leader>c', ':Neotree close<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>o', ':Neotree focus<CR>', { noremap = true, silent = true })
--Undotree
vim.keymap.set('n', '<leader>m', vim.cmd.UndotreeToggle)
--Fugitive
vim.keymap.set('n', '<leader>nm', vim.cmd.Git)
