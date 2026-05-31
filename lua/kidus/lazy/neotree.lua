return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",  -- file icons
    "MunifTanjim/nui.nvim",         -- ui component library
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true, -- close neovim if neo-tree is last window
      window = {
        width = 30,
      },
      filesystem = {
        follow_current_file = {
          enabled = true -- highlight current file in tree
        },
        hide_dotfiles = false, -- show dotfiles
      }
    })
    local keymap = vim.keymap.set
    keymap("n", "<leader>e", ":Neotree toggle<CR>")   -- toggle tree
    keymap("n", "<leader>o", ":Neotree focus<CR>")    -- focus tree
  end
}
