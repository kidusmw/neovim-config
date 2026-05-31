return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    local keymap = vim.keymap.set

    keymap("n", "<leader>pf", builtin.find_files, {})
    keymap("n", "<C-p>", builtin.git_files, {})
    keymap("n", "<leader>fb", builtin.buffers, {})
    keymap("n", "<leader>ps", function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
    end
}
