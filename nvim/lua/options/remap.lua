vim.g.mapleader = " "

-- open netrw for filetree navigation
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- for chadtree 
vim.keymap.set('n', '<leader>e', '<cmd>CHADopen<cr>', { noremap = true, silent = true })

-- open undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
