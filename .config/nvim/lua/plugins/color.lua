-- return {
--   "RRethy/base16-nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optionally configure and load the colorscheme
--     -- directly inside the plugin declaration.
--     vim.g.edge_enable_italic = true
--     vim.cmd.colorscheme("base16-classic-dark")
--     require("base16-colorscheme").setup({
--       base00 = "#000000", -- Background
--       base01 = "#282828", -- Lighter Background
--       base02 = "#3c3836", -- Selection Background
--       base03 = "#504945", -- Comments, Invisible
--       base04 = "#665c54", -- Dark Foreground
--       base05 = "#bdae93", -- Default Foreground
--       base06 = "#d5c4a1", -- Light Foreground
--       base07 = "#fbf1c7", -- Lightest Foreground
--       base08 = "#C34043", -- Red
--       base09 = "#FFA066", -- Orange
--       base0A = "#fabd2f", -- Yellow
--       base0B = "#b8bb26", -- Green
--       base0C = "#8ec07c", -- Aqua/Cyan
--       base0D = "#83a598", -- Blue
--       base0E = "#d3869b", -- Purple
--       base0F = "#d65d0e", -- Brown
--     })
--   end,
-- }

return {
  "rebelot/kanagawa.nvim",
  config = function()
    vim.cmd([[colorscheme kanagawa-dragon]])
  end,
}
