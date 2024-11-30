return {
  "rcarriga/nvim-dap-ui",
  name = "dapui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio"
  },
  config = function()
    require("dapui").setup()

    vim.keymap.set("n", "<Leader>ds", "<CMD>lua require('dapui').open()<CR>")
    vim.keymap.set("n", "<Leader>dc", "<CMD>lua require('dapui').close()<CR>")
  end,
}
