return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		panel = {
			enabled = false,
		},
		suggestion = {
			enabled = false,
			auto_trigger = true,
		},
	},
	config = function()
		require("copilot").setup({})
	end,
}
