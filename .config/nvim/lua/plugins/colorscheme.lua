return {
  -- add dracula
  { "sainnhe/gruvbox-material" },
  --{ "projekt0n/github-nvim-theme" },
  -- { "Yazeed1s/minimal.nvim" },
  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
      -- colorscheme = "minimal",
    },
  },
}
