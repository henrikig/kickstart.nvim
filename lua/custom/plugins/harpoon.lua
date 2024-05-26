Keys = {
  { "<leader>a",  "<cmd>lua require('harpoon.mark').add_file()<cr>",        desc = "Mark file with harpoon" },
  { "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>",          desc = "Go to next harpoon mark" },
  { "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>",          desc = "Go to previous harpoon mark" },
  { "<C-b>",      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
}

for i = 1, 8 do
  table.insert(Keys, {
    ("<leader>%d"):format(i),
    ("<cmd>lua require('harpoon.ui').nav_file(%d)<cr>"):format(i),
    desc = ("Go to nav_file %d"):format(i)
  })
end


return {
  "ThePrimeagen/harpoon",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = true,
  keys = Keys,
}
