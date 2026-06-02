return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    local keymap = vim.keymap.set

    keymap("n", "<leader>pf", builtin.find_files, {desc = "Find files"})
    keymap("n", "<C-p>", builtin.git_files, {desc = "Git files"})
    keymap("n", "<leader>fb", builtin.buffers, {desc = "Buffers"})
    keymap("n", "<leader>ps", function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end, { desc = "Grep string"})
  end
}
