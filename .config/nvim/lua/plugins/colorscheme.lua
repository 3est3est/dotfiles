return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
    },
    priority = 1000,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
    },
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
  },

  -- tokyonight-night  gruvbox  catppuccin  kanagawa  rose-pine  dracula  nord  everforest  sonokai  compact  oxocarbon
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
  {
    "shaunsingh/nord.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "sainnhe/everforest",
    lazy = true,
    priority = 1000,
  },
  {
    "sainnhe/sonokai",
    lazy = true,
    priority = 1000,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = true,
    priority = 1000,
  },
}
