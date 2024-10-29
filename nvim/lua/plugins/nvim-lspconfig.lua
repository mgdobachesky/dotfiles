return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "j-hui/fidget.nvim"
  },
  config = function()
    require("lspconfig").pylsp.setup {}
    require("lspconfig").ts_ls.setup {}
    require("lspconfig").lua_ls.setup {}
  end,
}
