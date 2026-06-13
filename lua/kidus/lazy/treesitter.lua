return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
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
      auto_install = true, -- auto install grammar for new filetypes
      highlight = {
        enable = true,
      },
      indent = {
        enable = true, -- treesitter based indentation
      },
    })

    -- Highlighting for GO
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'go' },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end
}
