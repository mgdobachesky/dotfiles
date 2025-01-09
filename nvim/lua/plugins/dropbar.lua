return {
  'Bekaboo/dropbar.nvim',
  name = 'dropbar',
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('dropbar').setup {
      bar = {
        sources = function(buf, _)
          local sources = require('dropbar.sources')
          if vim.bo[buf].ft == 'markdown' then
            return {
              sources.path,
              sources.markdown,
            }
          end
          if vim.bo[buf].buftype == 'terminal' then
            return {
              sources.terminal,
            }
          end
          return {
            sources.path,
          }
        end
      },
    }
  end,
}
