return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup({
        style = "dark",
        transparent = true,
        term_colors = true,

        code_style = {
          comments = "italic",
        },

        lualine = {
          transparent = true,
        },

        diagnostics = {
          darker = true,
        }
      })
      require("onedark").load()
    end,
  },
}
