return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "master",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "cpp",
        "css",
        "diff",
        "dockerfile",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "graphql",
        "html",
        "java",
        "javascript",
        "jsdoc",
        "json",
        "jsonc",
        "json5",
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
        "ruby",
      },
      highlight = {
        enable = true, 
      },
      indent = {
        enable = true,
      },
      auto_install = true,
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    event = "BufRead",
    opts = {
      multiwindow = true,
    },
    config = function(_, opts)
        require("treesitter-context").setup(opts)
    end,
  },
}
