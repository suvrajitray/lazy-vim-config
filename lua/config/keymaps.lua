-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- better escape
keymap.set("i", "jk", "<Esc>", { desc = "exit insert mode with jk", silent = true, noremap = true })
keymap.set("i", "kj", "<Esc>", { desc = "exit insert mode with kj", silent = true, noremap = true })

-- no highligh
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlights", silent = true, noremap = true })

-- up and down and left and right navigation
keymap.set({ "n", "x", "v" }, "<Up>", "5k", { desc = "move the cursor to five line up", silent = true, noremap = true })
keymap.set(
  { "n", "x", "v" },
  "<Down>",
  "5j",
  { desc = "move the cursor to five lines down", silent = true, noremap = true }
)
keymap.set(
  { "n", "x", "v" },
  "<Left>",
  "^",
  { desc = "move the cursor to first charactor of line", silent = true, noremap = true }
)
keymap.set(
  { "n", "x", "v" },
  "<Right>",
  "$",
  { desc = "move the cursor to last charactor of line", silent = true, noremap = true }
)

-- redo.
keymap.set("n", "U", "<C-r>", { desc = "redo", silent = true, noremap = true })

-- paste without overwriting
keymap.set("v", "p", "P", { desc = "paste without overiding existing register", silent = true, noremap = true })

-- map enter + s to save
keymap.set("n", "<CR>s", ":w<CR>", { desc = "map backspace to ctrl key in normal mode", silent = true, noremap = true })

-- map ctrl + a to select all
keymap.set("n", "<C-a>", "ggVG", { desc = "select all", silent = true, noremap = true })

-- enter + a to select all
keymap.set("n", "<CR>a", "ggVG", { desc = "select all", silent = true, noremap = true })
