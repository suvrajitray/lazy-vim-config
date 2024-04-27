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
  "g_",
  { desc = "move the cursor to last charactor of line", silent = true, noremap = true }
)

-- paste over currently selected text without yanking it
keymap.set("v", "p", '"_dp')
keymap.set("v", "P", '"_dP')

-- map ctrl + a to select all
keymap.set("n", "<C-a>", "ggVG", { desc = "select all", silent = true, noremap = true })

if not vim.g.vscode then
  -- redo.
  keymap.set("n", "U", "<C-r>", { desc = "redo", silent = true, noremap = true })
end

keymap.set("n", "<CR>", 'vi"', { desc = "map enter to select all inside double quot", silent = true, noremap = true })

keymap.set(
  "n",
  "<BS>",
  "vi'",
  { desc = "map backspace to select all inside single quot", silent = true, noremap = true }
)

keymap.set("n", "dw", 'vb"_d', { desc = "delete a word backwards", silent = true, noremap = true })

keymap.set(
  "n",
  "x",
  '"_x',
  { desc = "delete a character without affecting the register", silent = true, noremap = true }
)
