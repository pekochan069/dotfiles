local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Add file to harpoon (harpoon)" })
vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle harpoon menu (harpoon)" })

vim.keymap.set("n", "<C-s>", function() harpoon:list():select(1) end, { desc = "Goto first file (harpoon)" })
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, { desc = "Goto second file (harpoon)" })
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, { desc = "Goto third file (harpoon)" })
vim.keymap.set("n", "<C-e>", function() harpoon:list():select(4) end, { desc = "Goto fourth file (harpoon)" })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
