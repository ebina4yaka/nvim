return {
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
        bold_vert_split = false, -- use bold vertical separators
        dim_nc_background = false, -- dim 'non-current' window backgrounds
        disable_background = true, -- disable background
        disable_float_background = false, -- disable background for floats
        disable_italics = false, -- disabl:e italics
      })
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd("colorscheme poimandres")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "poimandres",
    },
    config = function()
      local guibg = "#AAFF00"
      local guifg = "#000000"
      vim.cmd("highlight LspReferenceRead  guibg=" .. guibg .. " guifg=" .. guifg)
      vim.cmd("highlight LspReferenceWrite guibg=" .. guibg .. " guifg=" .. guifg)
      vim.cmd("highlight LspReferenceText  guibg=" .. guibg .. " guifg=" .. guifg)
    end,
  },
}
