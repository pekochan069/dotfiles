local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
})

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files in project (telescope)" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "live grep files (telescope)" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "find files in buffer (telescope)" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "find files using help tags (telescope)" })

