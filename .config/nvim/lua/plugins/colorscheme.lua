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
        bg1 = "#484E50",
        bg2 = "#484E50", -- nvim clock bg
        bg3 = "#c5c9c5",
        fg0 = "#DCD7BA",
        fg1 = "#c5c9c5",
        fg2 = "#c5c9c5",
        fg3 = "#FFFFFF",
        red0 = "#c4746e",
        red1 = "#E46876",
        yellow0 = "#c4b28a",
        yellow1 = "#E6C384",
        green0 = "#8a9a7b",
        green1 = "#87a987",
        teal0 = "#8ba4b0",
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
