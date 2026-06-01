return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers",
        separator_style = "slant",
        show_buffer_close_icons = true,
        show_close_icon = false,
        color_icons = true,
      },
    })

    local keymap = vim.keymap.set
    keymap("n", "<Tab>", ":BufferLineCycleNext<CR>")    -- next buffer
    keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")  -- previous buffer
    keymap("n", "<leader>x", ":bdelete<CR>")            -- close buffer
  end
}
