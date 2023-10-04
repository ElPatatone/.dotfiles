require("neorg").setup({
	load = {
		["core.defaults"] = {},
		["core.concealer"] = {},
		["core.integrations.treesitter"] = {},
		["core.dirman"] = {
			config = {
				workspaces = {
					work = "~/Documents/notes/work",
					personal = "~/Documents/notes/personal",
				},
				default_workspace = "work",
			},
		},
	},
})
