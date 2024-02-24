return {
  -- add gruvbox
  --{ "kdheepak/monochrome.nvim" },
  { "audibleblink/hackthebox.vim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "hackthebox",
      background = "dark",
    },
  },
}
