-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd [[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]]

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  cmd = 'NvimTreeToggle',
  keys = {
    { '\\', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' } },
    { '<leader>ts', ':NvimTreeFindFile<CR>', { desc = 'Find file in NvimTree' } },
    { '<leader>tc', ':NvimTreeCollapse<CR>', { desc = 'Close NvimTree' } },
  },
  config = function()
    require('nvim-tree').setup {
      -- change folder arrow icons
      renderer = {
        icons = {
          glyphs = {
            folder = {
              arrow_closed = ' ',
              arrow_open = ' ',
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = true,
          },
        },
      },
      filters = {
        dotfiles = false,
        custom = { '^.git$' },
      },
      git = {
        ignore = false,
      },
    }
  end,
}
