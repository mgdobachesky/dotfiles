
return {
  'Bekaboo/dropbar.nvim',
  name = 'dropbar',
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('dropbar').setup{}
  end,
}
