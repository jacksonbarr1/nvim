return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        bash = { "beautysh" },
        c = { "clang-format" },
        javascript = { "prettierd", "prettier", stop_after_first = true},
        json = { "fixjson" },
        lua = { "stylelua" },
        python = { "isort", "black" },
      },
    })
  end,
}
