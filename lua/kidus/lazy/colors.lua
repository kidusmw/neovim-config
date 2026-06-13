return {
  "sainnhe/gruvbox-material",
  config = function()
    -- Set the flavor to match morhetz exactly
    vim.g.gruvbox_material_foreground = 'original'
    vim.g.gruvbox_material_background = 'medium'
    vim.cmd('colorscheme gruvbox-material')
  end
}
