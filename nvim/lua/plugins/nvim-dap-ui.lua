return {
  "rcarriga/nvim-dap-ui",
  name = "dapui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio"
  },
  config = function()
    local dapui = require("dapui")
    local dap = require("dap")

    dapui.setup()

    vim.keymap.set("n", "<Leader>ds", function()
      dap.continue()
      dapui.open()
    end)

    vim.keymap.set("n", "<Leader>de", function()
      dap.clear_breakpoints()
      dapui.close()
      dap.terminate()
    end)
  end,
}
