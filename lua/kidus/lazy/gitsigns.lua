return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "│" },
        change = { text = "│" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
    })

    local keymap = vim.keymap.set
    keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")  -- preview change
    keymap("n", "<leader>gb", ":Gitsigns blame_line<CR>")    -- git blame
    keymap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>")    -- revert change
  end
}
