return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		keymap = { preset = "default" },
		completion = {
			menu = { border = "rounded" },
			documentation = { window = { border = "rounded" }, auto_show = true },
		},
		signature = { window = { border = "rounded" }, enabled = true },
		appearance = {
			nerd_font_variant = "mono",
		},
		sources = {
			default = { "copilot", "lsp", "path", "snippets", "buffer" },
		},
	},
}
