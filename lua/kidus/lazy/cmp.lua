return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",     -- lsp completions
      "hrsh7th/cmp-buffer",        -- words from current buffer
      "hrsh7th/cmp-path",          -- file path completions
      "L3MON4D3/LuaSnip",         -- snippet engine
      "saadparwaiz1/cmp_luasnip", -- snippet completions
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(),  -- previous suggestion
          ["<C-j>"] = cmp.mapping.select_next_item(),  -- next suggestion
          ["<C-d>"] = cmp.mapping.scroll_docs(4),      -- scroll docs down
          ["<C-u>"] = cmp.mapping.scroll_docs(-4),     -- scroll docs up
          ["<C-Space>"] = cmp.mapping.complete(),      -- trigger completion
          ["<C-e>"] = cmp.mapping.abort(),             -- close completion
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- confirm
          ["<Tab>"] = cmp.mapping(function(fallback)   -- tab through suggestions
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },   -- lsp suggestions first
          { name = "luasnip" },    -- then snippets
          { name = "buffer" },     -- then buffer words
          { name = "path" },       -- then file paths
        }),
      })
    end
  }
}
