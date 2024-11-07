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

    vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = function(data)
      local is_file = vim.fn.filereadable(data.file) == 1
      local is_directory = vim.fn.isdirectory(data.file) == 1
      local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

      if is_directory then
        vim.cmd.cd(data.file)
      end

      if is_directory or no_name then
        require("nvim-tree.api").tree.open()
      end
    end})
  end,
}
