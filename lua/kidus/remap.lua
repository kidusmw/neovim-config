local keymap = vim.keymap.set
vim.g.mapleader = " "

-- basics
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit" })
keymap("n", "<leader>u", ":u<CR>", { desc = "Undo" })

-- move between splits
keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to bottom split" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to top split" })

-- stay in indent mode when indenting in visual mode
keymap("v", "<", "<gv", { desc = "Indent left" })
keymap("v", ">", ">gv", { desc = "Indent right" })

-- move selected lines up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })

-- paste without losing clipboard
keymap("v", "p", '"_dP', { desc = "Paste without losing clipboard" })

-- terminal
keymap("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Terminal move left" })
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Terminal move right" })
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Terminal move down" })
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Terminal move up" })

-- comments
keymap("n", "<leader>/", "gcc", { remap = true, desc = "Toggle comment" })
keymap("v", "<leader>/", "gc", { remap = true, desc = "Toggle comment" })

-- diagnostics
keymap("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostics" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })

