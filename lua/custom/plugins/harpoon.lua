return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'
    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    vim.keymap.set("n", "<C-b>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = 'Go to nav_file 1' })
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = 'Go to nav_file 2' })
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = 'Go to nav_file 3' })
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = 'Go to nav_file 4' })
    vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = 'Go to nav_file 5' })
    vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end, { desc = 'Go to nav_file 6' })
    vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end, { desc = 'Go to nav_file 7' })
    vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end, { desc = 'Go to nav_file 8' })

  end,
}
