vim.g.mapleader = " " -- Set Space as the Leader key

local keymap = vim.keymap.set
keymap("n", "<leader>pv", vim.cmd.Ex, { desc = "Open File Explorer (Netrw)" })
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
