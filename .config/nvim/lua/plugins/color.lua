-- return {
--   "AlexvZyl/nordic.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("nordic").load()
--   end,
-- }

return {
  "audibleblink/hackthebox.vim",
  config = function()
    vim.cmd([[colorscheme hackthebox]])
  end,
}
