return {
  "luukvbaal/statuscol.nvim",
  config = function()
    local builtin = require("statuscol.builtin")
    require("statuscol").setup({
      relculright = true,
      segments = {
        {
          text = { builtin.foldfunc, " " },
          click = "v:lua.ScFa"
        },
        {
          sign = { namespace = { "diagnostic/signs" }, maxwidth = 1, auto = true },
          click = "v:lua.ScSa"
        },
        {
          sign = { name = { ".*" }, maxwidth = 1, auto = true },
          click = "v:lua.ScSa"
        },
        {
          text = { builtin.lnumfunc, " " },
          click = "v:lua.ScLa",
        },
      }
    })
  end,
}
