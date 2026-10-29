return {

  -- Usage -- ColorScheme-startup
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
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
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      enable = { transparency = true },
    },
    priority = 1000,
  },
  {
    "sainnhe/everforest",
    lazy = true,
    priority = 1000,
    init = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_transparent_background = 2
      -- ให้ floating windows (รวม terminal ของ snacks) โปร่งใสเหมือนหน้าต่างปกติ
      vim.g.everforest_float_style = "blend"
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = true,
    priority = 1000,
    init = function()
      vim.g.sonokai_transparent_background = 2
      vim.g.sonokai_float_style = "blend"
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = true,
    opts = { transparency = true },
    priority = 1000,
  },
}
