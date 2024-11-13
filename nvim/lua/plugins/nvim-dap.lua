return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "mxsdev/nvim-dap-vscode-js",
    "mfussenegger/nvim-dap-python",

  },
  config = function()
    vim.keymap.set("n", "<Leader>da", "<CMD>lua require('dap').continue()<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>db", "<CMD>lua require('dap').toggle_breakpoint()<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>dd", "<CMD>lua require('dap').continue()<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>di", "<CMD>lua require('dap').step_into()<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>do", "<CMD>lua require('dap').step_out()<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>dO", "<CMD>lua require('dap').step_over()<CR>", { desc = "" })
    vim.keymap.set("n", "<Leader>dt", "<CMD>lua require('dap').terminate()<CR>", { desc = "" })
  end,
}
