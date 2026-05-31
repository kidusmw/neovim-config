return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "python",
        "go",
        "rust",
        "html",
        "css",
        "json",
        "bash",
      },
      auto_install = true,    -- auto install grammar for new filetypes
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,        -- treesitter based indentation
      },
    })
  end
}
