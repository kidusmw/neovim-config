local keymap = vim.keymap.set

vim.g.mapleader = " "

--basics
keymap("n", "<leader>w", ":w<CR>")
keymap("n", "<leader>q", ":q<CR>")
keymap("n", "<leader>pv", vim.cmd.Ex)

-- move between splits
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-l>", "<C-w>l")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")

-- stay in indent mode when indenting in visual mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- move selected lines up and down
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- paste without losing clipboard
keymap("v", "p", '"_dP')
