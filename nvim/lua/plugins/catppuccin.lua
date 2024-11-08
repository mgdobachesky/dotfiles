return {
  "catppuccin/nvim",
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      integrations = {
        mason = true,
        markdown = true,
        barbar = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        telescope = {
          enabled = true,
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      }
    })

    require('lualine').setup {
      options = {
        theme = "catppuccin"
      }
    }

    vim.cmd.colorscheme "catppuccin"
  end,
}
