return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  depedencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  init = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
     textobjects = {
        select = {
          enable = true,
          lookahead = true,

          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
            ["ao"] = "@comment.outer",
            ["as"] = "@local.scope",
          },

          selection_modes = {
            ["@parameter.outer"] = "v", -- charwise
            ["@function.outer"] = "V", -- linewise
            ["@class.outer"] = "<c-v>", -- blockwise
          },

          include_surrounding_whitespace = true
        },
        
        swap = {
          enable = true,
          swap_next = {
            ["<leader>a"] = { query = "@parameter.inner", desc = "Swap with next parameter" },
          },
          swap_previous = {
            ["<leader>A"] = "@parameter.inner",
          },
        },
      },
    })
  end
}
