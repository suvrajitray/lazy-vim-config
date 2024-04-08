-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- better escape
keymap.set("i", "jk", "<Esc>", { desc = "exit insert mode with jk" })
keymap.set("i", "kj", "<Esc>", { desc = "exit insert mode with kj" })

-- no highligh
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlights" })

-- up and down and left and right navigation
keymap.set({ "n", "x", "v" }, "<Up>", "5k", { desc = "move the cursor to five line up" })
keymap.set({ "n", "x", "v" }, "<Down>", "5j", { desc = "move the cursor to five lines down" })
keymap.set({ "n", "x", "v" }, "<Left>", "^", { desc = "move the cursor to first charactor of line" })
keymap.set({ "n", "x", "v" }, "<Right>", "$", { desc = "move the cursor to last charactor of line" })

-- redo.
keymap.set("n", "U", "<C-r>", { desc = "redo", silent = true })

-- paste without overwriting
keymap.set("v", "p", "P", { desc = "paste without overiding existing register" })
