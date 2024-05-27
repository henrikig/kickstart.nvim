return {
  'jinh0/eyeliner.nvim',
  lazy = false,
  config = function()
    require('eyeliner').setup {
      highlight_on_key = false,
    }
  end,
}
