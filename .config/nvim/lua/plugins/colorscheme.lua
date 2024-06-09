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
        bg0 = "#000000",
        bg1 = "#000000",
        bg2 = "#484E50", -- nvim clock bg
        bg3 = "#484E50",
        fg0 = "#d4be98",
        fg1 = "#d4be98",
        fg2 = "#d4be98",
        fg3 = "#d4be98",
        red0 = "#ea6962",
        red1 = "#ea6962",
        orange0 = "#d3869b",
        orange1 = "#d3869b",
        yellow0 = "#ffffff",
        yellow1 = "#d8a657",
        green0 = "#33ff00",
        green1 = "#33ff00",
        teal0 = "#00ffff",
        teal1 = "#83a598",
        aqua0 = "#888888",
        aqua1 = "#888888",
        blue0 = "#8ba4b0",
        blue1 = "#7FB4CA",
        purple0 = "#cc00ff",
        purple1 = "#d3869b",
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
