
return {
  'Bekaboo/dropbar.nvim',
  name = 'dropbar',
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim'
  },
  config = function()
    require('dropbar').setup{}
  end,
}
