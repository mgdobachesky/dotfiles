return {
  "rcarriga/nvim-dap-ui",
  name = "dapui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio"
  },
  config = function()
    require("dapui").setup {}

    vim.keymap.set("n", "<Leader>dh", "<CMD>lua require('dapui').eval()<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>du", "<CMD>lua require('dapui').open()<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>dc", "<CMD>lua require('dapui').close()<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>dw", "<CMD>lua require('dapui').float_element('watches', { enter = true })<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>ds", "<CMD>lua require('dapui').float_element('scopes', { enter = true })<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>dr", "<CMD>lua require('dapui').float_element('repl', { enter = true })<CR>", { desc = "" })
  end,
}
