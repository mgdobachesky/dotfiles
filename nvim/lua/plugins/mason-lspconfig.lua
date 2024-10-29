return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {"pylsp", "ts_ls", "lua_ls"},
      automatic_installation = true,
    })
  end,
}
