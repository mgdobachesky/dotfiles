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
        aerial = true,
        alpha = true,
        cmp = true,
        diffview = true,
        mason = true,
        barbar = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        telescope = {
          enabled = true,
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            ok = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
            ok = { "underline" },
          },
          inlay_hints = {
            background = true,
          },
          indent_blankline = {
            enabled = true,
            scope_color = "",
            colored_indent_levels = false,
          },
        },
      }
    })

    require('lualine').setup {
      options = {
        theme = "catppuccin"
      }
    }

    vim.o.termguicolors = true
    vim.cmd.colorscheme "catppuccin"
  end,
}
