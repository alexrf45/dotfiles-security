-- return {
--   "audibleblink/hackthebox.vim",
--   config = function()
--     vim.cmd([[colorscheme hackthebox]])
--   end,
-- }

return {
  -- add gruvbox
  {
    "daschw/leaf.nvim",
    opts = {
      transparent = true,
      contrast = "low",
      colors = {
        bg0 = "#282828",
        bg1 = "#484E50",
        bg2 = "#484E50", -- nvim clock bg
        bg3 = "#c5c9c5",
        fg0 = "#d4be98",
        fg1 = "#d4be98",
        fg2 = "#d4be98",
        fg3 = "#d4be98",
        red0 = "#ea6962",
        red1 = "#ea6962",
        orange0 = "#d3869b",
        orange1 = "#d3869b",
        yellow0 = "#d8a657",
        yellow1 = "#d8a657",
        green0 = "#d4be98",
        green1 = "#d4be98",
        teal0 = "#83a598",
        teal1 = "#83a598",
        aqua0 = "#7daea3",
        aqua1 = "#7daea3",
        blue0 = "#8ba4b0",
        blue1 = "#7FB4CA",
        purple0 = "#a292a3",
        purple1 = "#938AA9",
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "leaf",
    },
  },
}
