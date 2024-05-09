return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      require("hlchunk").setup({})
    end,
  },
  {
    "stevearc/overseer.nvim",
    opts = {},
  },
}
