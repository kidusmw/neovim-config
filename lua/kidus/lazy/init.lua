require("kidus.lazy.bootstrap")

local plugins = {
  require("kidus.lazy.colors"),
  require("kidus.lazy.treesitter"),
  require("kidus.lazy.telescope"),
  require("kidus.lazy.neotree"),
  require("kidus.lazy.lsp"),
  require("kidus.lazy.cmp"),
  require("kidus.lazy.autopairs"),
  require("kidus.lazy.gitsigns"),
  require("kidus.lazy.lualine"),
  require("kidus.lazy.bufferline"),
  require("kidus.lazy.toggleterm"),
  require("kidus.lazy.whichkey"),
}

local opts = {}

require("lazy").setup(plugins, opts)
