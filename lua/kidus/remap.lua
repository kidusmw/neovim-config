local keymap = vim.keymap.set

vim.g.mapleader = " "

--basics
keymap("n", "<leader>w", ":w<CR>")
keymap("n", "<leader>q", ":q<CR>")

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

-- open terminal
keymap("n", "<leader>t", ":term<CR>")

-- escape terminal mode back to normal mode
keymap("t", "<Esc>", "<C-\\><C-n>")

-- navigate out of terminal into splits without closing it
keymap("t", "<C-h>", "<C-\\><C-n><C-w>h")
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l")
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j")
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k")

-- Toggle comment with Ctrl+/
-- We use <C-_> because in many terminals, Ctrl+/ maps to Ctrl+Underscore
vim.keymap.set('n', '<leader>/', 'gcc', { remap = true, desc = "Toggle Comment" })
vim.keymap.set('v', '<leader>/', 'gc', { remap = true, desc = "Toggle Comment" })

keymap("n", "<leader>d", vim.diagnostic.open_float)   -- show error under cursor
keymap("n", "]d", vim.diagnostic.goto_next)           -- next error
keymap("n", "[d", vim.diagnostic.goto_prev)           -- previous error
