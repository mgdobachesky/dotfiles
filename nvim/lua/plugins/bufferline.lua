return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'catppuccin/nvim',
  },
  config = function()
    vim.opt.termguicolors = true

    require("bufferline").setup {
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center",
          }
        }
      }
    }
  end,
}
