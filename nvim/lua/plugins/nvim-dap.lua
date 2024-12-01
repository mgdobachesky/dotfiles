return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "mxsdev/nvim-dap-vscode-js",
    "mfussenegger/nvim-dap-python",

  },
  config = function()
    vim.keymap.set("n", "<Leader>dc", "<CMD>lua require('dap').continue()<CR>")
    vim.keymap.set("n", "<Leader>db", "<CMD>lua require('dap').toggle_breakpoint()<CR>")
    vim.keymap.set("n", "<Leader>dn", "<CMD>lua require('dap').step_over()<CR>")
    vim.keymap.set("n", "<Leader>di", "<CMD>lua require('dap').step_into()<CR>")
    vim.keymap.set("n", "<Leader>do", "<CMD>lua require('dap').step_out()<CR>")
    vim.keymap.set("n", "<Leader>dt", "<CMD>lua require('dap').terminate()<CR>")
    vim.keymap.set("n", "<Leader>dC", "<CMD>lua require('dap').clear_breakpoints()<CR>")
  end,
}
