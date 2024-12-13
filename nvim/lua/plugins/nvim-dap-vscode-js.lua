return {
  "mxsdev/nvim-dap-vscode-js",
  dependencies = {
    "mfussenegger/nvim-dap"
  },
  config = function()
    require("dap-vscode-js").setup({
      debugger_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter",
      debugger_cmd = { "js-debug-adapter" },
      adapters = { "chrome", "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
    })

    for _, language in ipairs({ "typescript", "javascript", "javascriptreact", "typescriptreact" }) do
      require("dap").configurations[language] = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch Yarn Start Debugger ",
          cwd = "${workspaceFolder}",
          sourceMaps = true,
          runtimeExecutable = "yarn",
          runtimeArgs = {
            "start:dev"
          },
          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },
          console = "integratedTerminal",
        },
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch Yarn iOS Debugger ",
          cwd = "${workspaceFolder}",
          sourceMaps = true,
          runtimeExecutable = "yarn",
          runtimeArgs = {
            "ios"
          },
          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },
          console = "integratedTerminal",
        },
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch Yarn Android Debugger ",
          cwd = "${workspaceFolder}",
          sourceMaps = true,
          runtimeExecutable = "yarn",
          runtimeArgs = {
            "android"
          },
          resolveSourceMapLocations = {
            "${workspaceFolder}/**",
            "!**/node_modules/**",
          },
          console = "integratedTerminal",
        },
      }
    end
  end,
}
