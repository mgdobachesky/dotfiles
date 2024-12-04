return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.opt.termguicolors = true

    require("nvim-tree").setup({
      view = {
        width = {
          min = '10%',
          max = '20%',
        }
      }
    })

    vim.keymap.set("n", "<leader>ntt", ":NvimTreeToggle<CR>", { desc = "Nvim-Tree toggle" })
    vim.keymap.set("n", "<leader>nto", ":NvimTreeFocus<CR>", { desc = "Nvim-Tree open" })
    vim.keymap.set("n", "<leader>ntf", ":NvimTreeFindFile<CR>", { desc = "Nvim-Tree find file" })
    vim.keymap.set("n", "<leader>ntc", ":NvimTreeCollapse<CR>", { desc = "Telescope collapse" })
  end,
}
