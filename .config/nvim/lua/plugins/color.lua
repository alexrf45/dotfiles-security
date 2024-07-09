-- return {
--   "AlexvZyl/nordic.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("nordic").load()
--   end,
-- }

-- return {
--   "audibleblink/hackthebox.vim",
--   config = function()
--     vim.cmd([[colorscheme hackthebox]])
--   end,
-- }
-- return {
--   "olimorris/onedarkpro.nvim",
--   priority = 1000, -- Ensure it loads first
--   config = function()
--     vim.cmd([[colorscheme onedark_dark]])
--   end,
-- }
--
return {
  "sainnhe/everforest",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.everforest_enable_italic = true
    vim.cmd.colorscheme("everforest")
  end,
}
