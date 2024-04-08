local keymap = vim.keymap

-- map leader key
-- vim.g.mapleader = " "

-- navigation between windows.
keymap.set("n", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
keymap.set("x", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true })
keymap.set("n", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
keymap.set("x", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true })
keymap.set("n", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
keymap.set("x", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true })
keymap.set("n", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })
keymap.set("x", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true })

keymap.set("n", "gr", ':call VSCodeNotify("editor.action.goToReferences")<CR>', { silent = true })
