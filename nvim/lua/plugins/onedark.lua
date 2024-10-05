return { 
  "navarasu/onedark.nvim", 
  config = function(_,_) 
    onedark = require("onedark")
    onedark.setup({ style = "deep" }) 
    onedark.load()
  end,
}
