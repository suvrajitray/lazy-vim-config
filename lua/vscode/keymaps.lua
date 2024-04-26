local map = vim.keymap.set

-- map leader key
-- vim.g.mapleader = " "

-- navigation between windows.
map("n", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true, noremap = true })
map("x", "<C-j>", ':call VSCodeNotify("workbench.action.navigateDown")<CR>', { silent = true, noremap = true })
map("n", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true, noremap = true })
map("x", "<C-k>", ':call VSCodeNotify("workbench.action.navigateUp")<CR>', { silent = true, noremap = true })
map("n", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true, noremap = true })
map("x", "<C-h>", ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', { silent = true, noremap = true })
map("n", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true, noremap = true })
map("x", "<C-l>", ':call VSCodeNotify("workbench.action.navigateRight")<CR>', { silent = true, noremap = true })

map("n", "gr", ':call VSCodeNotify("editor.action.goToReferences")<CR>', { silent = true, noremap = true })

-- undo redo like vscode.
map("n", "u", ':call VSCodeNotify("undo")<CR>', { silent = true, noremap = true })
map("n", "U", ':call VSCodeNotify("redo")<CR>', { silent = true, noremap = true })
map("n", "<C-r>", ':call VSCodeNotify("redo")<CR>', { silent = true, noremap = true })
