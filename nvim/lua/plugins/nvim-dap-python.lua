return {
  "mfussenegger/nvim-dap-python",
  dependencies = {
    "mfussenegger/nvim-dap"
  },
  ft = {"py"},
  config = function()
    require('dap-python').setup(
      vim.fn.stdpath("data") .. '/mason/packages/debugpy/venv/bin/python3',
      { include_configs = false }
    )

    local host = "0.0.0.0"
    local debug_port = 5678

    require('dap').configurations["python"] = {
      {
        type = 'python',
        request = 'attach',
        name = "Docker Attached Python Debugger",
        connect = {
          port = tonumber(debug_port),
          host = host,
        },
        cwd = vim.fn.getcwd(),
        mode = "remote",
        pathMappings = {
          {
            localRoot = "${workspaceFolder}",
            remoteRoot = "/usr/src/app",
          },
        },
      }
    }
  end,
}
