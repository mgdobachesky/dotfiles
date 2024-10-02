return {
  'navarasu/onedark.nvim', 
  config = function(_,_) 
    onedark = require('onedark')
    onedark.setup({ style = 'dark' }) 
    onedark.load()
  end,
}
