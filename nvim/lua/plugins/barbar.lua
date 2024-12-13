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

    vim.keymap.set("n", "<leader>bmn", "<cmd>BufferMoveNext<CR>")
    vim.keymap.set("n", "<leader>bmp", "<cmd>BufferMovePrevious<CR>")
    vim.keymap.set("n", "<leader>bn", "<cmd>BufferNext<CR>")
    vim.keymap.set("n", "<leader>bp", "<cmd>BufferPrevious<CR>")
    vim.keymap.set("n", "<leader>bf", "<cmd>BufferFirst<CR>")
    vim.keymap.set("n", "<leader>bl", "<cmd>BufferLast<CR>")
    vim.keymap.set("n", "<leader>bcc", "<cmd>BufferClose<CR>")
    vim.keymap.set("n", "<leader>bca", "<cmd>BufferCloseAllButCurrent<CR>")
    vim.keymap.set("n", "<leader>bcr", "<cmd>BufferCloseBuffersRight<CR>")
    vim.keymap.set("n", "<leader>bcl", "<cmd>BufferCloseBuffersLeft<CR>")
  end,
}
