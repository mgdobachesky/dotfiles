return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "mxsdev/nvim-dap-vscode-js",
    "mfussenegger/nvim-dap-python",

  },
  config = function()
    local dap = require("dap")

    vim.keymap.set("n", "<Leader>dc", dap.continue)
    vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint)
    vim.keymap.set("n", "<Leader>dn", dap.step_over)
    vim.keymap.set("n", "<Leader>di", dap.step_into)
    vim.keymap.set("n", "<Leader>do", dap.step_out)
    vim.keymap.set("n", "<Leader>dt", dap.terminate)
    vim.keymap.set("n", "<Leader>dC", dap.clear_breakpoints)
  end,
}
