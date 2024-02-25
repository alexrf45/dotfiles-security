-- return {
--   -- add gruvbox
--   --{ "kdheepak/monochrome.nvim" },
--   --{ "audibleblink/hackthebox.vim" },
--   { "Mofiqul/dracula.nvim" },
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       theme = "dracula",
--       colorscheme = "dracula",
--       background = "dark",
--       transparent = true,
--     },
--   },
-- }

return {
  -- add dracula
  { "Mofiqul/dracula.nvim" },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
      transparent_bg = true,
    },
  },
}
