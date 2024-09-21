return {
  "rebelot/kanagawa.nvim",
  config = function()
    vim.cmd([[colorscheme kanagawa-dragon]])
  end,
}
-- return {
--   "RRethy/base16-nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optionally configure and load the colorscheme
--     -- directly inside the plugin declaration.
--     vim.g.edge_enable_italic = true
--     vim.cmd.colorscheme("base16-gruvbox-material-dark-hard")
--   end,
-- }
