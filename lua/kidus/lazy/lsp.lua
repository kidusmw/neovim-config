return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ts_ls",
          "gopls",
           -- "rust_analyzer",
          "pyright",
          "html",
          "cssls",
          "lua_ls",
        },
        automatic_installation = true,
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      -- new 0.11 native API
      vim.lsp.config("*", {})

      vim.lsp.enable({
        "ts_ls",
        "gopls",
        -- "rust_analyzer",
        "pyright",
        "html",
        "cssls",
        "lua_ls",
      })

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = {"vim"},
            },
          },
        },
      })

      -- keymaps only active when lsp attaches
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function()
          local keymap = vim.keymap.set
          keymap("n", "K", vim.lsp.buf.hover, {})
          keymap("n", "gd", vim.lsp.buf.definition, {})
          keymap("n", "gr", vim.lsp.buf.references, {})
          keymap("n", "<leader>ca", vim.lsp.buf.code_action, {})
          keymap("n", "<leader>rn", vim.lsp.buf.rename, {})
        end
      })
    end
  }
}
