return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    require("lspconfig").pylsp.setup {
      capabilities = capabilities,
    }

    require("lspconfig").ts_ls.setup {
      capabilities = capabilities,
    }

    require("lspconfig").lua_ls.setup {
      capabilities = capabilities,
      on_init = function(client)
        if client.workspace_folders then
          local path = client.workspace_folders[1].name
          if vim.uv.fs_stat(path..'/.luarc.json') or vim.uv.fs_stat(path..'/.luarc.jsonc') then
            return
          end
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
          runtime = {
            version = 'LuaJIT'
          },
          workspace = {
            checkThirdParty = false,
            library = {
              vim.env.VIMRUNTIME
            }
          }
        })
      end,
      settings = {
        Lua = {}
      }
    }

    require("lspconfig").bashls.setup {
      capabilities = capabilities,
    }
  end,

  vim.keymap.set('n', 'grn', vim.lsp.buf.rename);
  vim.keymap.set({'n', 'v'}, 'gra', vim.lsp.buf.code_action);
  vim.keymap.set('n', 'grr', vim.lsp.buf.references);
  vim.keymap.set('n', 'gri', vim.lsp.buf.implementation);
  vim.keymap.set('n', 'gO', vim.lsp.buf.document_symbol);
  vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help);
}
