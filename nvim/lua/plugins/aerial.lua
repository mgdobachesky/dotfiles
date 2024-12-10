return {
  'stevearc/aerial.nvim',
  opts = {},
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("aerial").setup({
      layout = {
        min_width = 20,
        max_width = { 40, 0.2 },
      },
      manage_folds = true,
      link_folds_to_tree = true,
      link_tree_to_folds = true,
    })

    vim.keymap.set("n", "<leader>at", "<cmd>AerialToggle!<CR>")
  end,
}
