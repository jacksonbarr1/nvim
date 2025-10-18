-- Formatting.
return {
    {
        'stevearc/conform.nvim',
        opts = {
            formatters_by_ft = {
                c = { name = 'clangd', timeout_ms = 500, lsp_format = 'prefer' },
                go = { name = 'gopls', timeout_ms = 500, lsp_format = 'prefer' },
                javascript = { 'prettier', name = 'dprint', timeout_ms = 500, lsp_format = 'fallback' },
                javascriptreact = { 'prettier', name = 'dprint', timeout_ms = 500, lsp_format = 'fallback' },
                json = { 'prettier', name = 'dprint', timeout_ms = 500, lsp_format = 'fallback' },
                jsonc = { 'prettier', name = 'dprint', timeout_ms = 500, lsp_format = 'fallback' },
                less = { 'prettier' },
                lua = { 'stylua' },
                markdown = { 'prettier' },
                rust = { name = 'rust_analyzer', timeout_ms = 500, lsp_format = 'prefer' },
                scss = { 'prettier' },
                sh = { 'shfmt' },
                typescript = { 'prettier', name = 'dprint', timeout_ms = 500, lsp_format = 'fallback' },
                typescriptreact = { 'prettier', name = 'dprint', timeout_ms = 500, lsp_format = 'fallback' },
                yaml = { 'prettier' },
                -- For filetypes without a formatter:
                ['_'] = { 'trim_whitespace', 'trim_newlines' },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_format = "fallback"
            }
        },
    },
}
