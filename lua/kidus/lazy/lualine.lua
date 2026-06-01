return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",        -- picks up sonokai automatically
        globalstatus = true,   -- single statusline across all splits
      },
    })
  end
}
