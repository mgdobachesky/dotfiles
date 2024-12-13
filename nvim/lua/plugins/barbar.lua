return {
  'romgrk/barbar.nvim',
  name = 'barbar',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    require('barbar').setup {
      sidebar_filetypes = {
        NvimTree = true,
      },
    }

    vim.keymap.set("n", "<leader>bcc", "<cmd>BufferClose<CR>")
    vim.keymap.set("n", "<leader>bca", "<cmd>BufferCloseAllButCurrent<CR>")
    vim.keymap.set("n", "<leader>bcr", "<cmd>BufferCloseBuffersRight<CR>")
    vim.keymap.set("n", "<leader>bcl", "<cmd>BufferCloseBuffersLeft<CR>")
  end,
}
