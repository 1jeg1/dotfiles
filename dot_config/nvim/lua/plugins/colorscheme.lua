return {
  -- 1. Install pywal.nvim plugin
  {
    "AlphaTechnolog/pywal.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local pywal = require("pywal")
      pywal.setup()
      vim.cmd("colorscheme pywal")
    end,
  },

  -- 2. Tell LazyVim to use pywal as default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "pywal",
    },
  },
}
