require("kidus.lazy.bootstrap")

local plugins = {
  require("kidus.lazy.colors"),
  require("kidus.lazy.treesitter"),
  require("kidus.lazy.telescope"),
  require("kidus.lazy.neotree"),
  require("kidus.lazy.lsp"),
  require("kidus.lazy.cmp"),
}

local opts = {}

require("lazy").setup(plugins, opts)
