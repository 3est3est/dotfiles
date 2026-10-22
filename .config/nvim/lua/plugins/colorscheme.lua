return {

  -- Usage -- ColorScheme-startup
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },

  -- ColorScheme
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    priority = 1000,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = { transparent_mode = true },
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true,
      },
    },
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      enable = { transparency = true },
    },
    priority = 1000,
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
    init = function()
      vim.g.everforest_transparent_background = 2
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = true,
    priority = 1000,
    init = function()
      vim.g.sonokai_transparent_background = 2
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = true,
    opts = { transparency = true },
    priority = 1000,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    opts = { transparent = true },
    priority = 1000,
  },
  {
    "marekh19/meowsoot.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "embark-theme/vim",
    lazy = false,
    priority = 1000,
  },
  {
    "HoNamDuong/hybrid.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
