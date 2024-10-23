-- return {
--   "rebelot/kanagawa.nvim",
--   config = function()
--     vim.cmd([[colorscheme kanagawa-dragon]])
--   end,
-- }
-- return {
--   "RRethy/base16-nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optionally configure and load the colorscheme
--     -- directly inside the plugin declaration.
--     vim.g.edge_enable_italic = true
--     vim.cmd.colorscheme("base16-tender")
--   end,
-- }

-- return {
--   "audibleblink/hackthebox.vim",
--   config = function()
--     vim.cmd([[colorscheme hackthebox]])
--   end,
-- }
--

return {
  "iruzo/matrix-nvim",
  config = function()
    vim.cmd([[colorscheme matrix]])
    vim.g.matrix_disable_background = true
  end,
}
