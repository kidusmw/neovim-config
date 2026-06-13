return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 15,
      direction = "horizontal", -- "horizontal", "vertical", "float"
      shade_terminals = true,
    })

    -- floating terminal
    local keymap = vim.keymap.set
    keymap("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Toggle Terminal" })
    keymap("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
    keymap("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
    keymap("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>")
  end
}
