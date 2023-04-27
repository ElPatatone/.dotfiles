require("neorg").setup({
	load = {
		["core.defaults"] = {},
		["core.concealer"] = {},
		["core.dirman"] = {
			config = {
				workspaces = {
					work = "~/Documents/notes/work",
					home = "~/Documents/notes/home",
				},
				default_workspace = "work",
			},
		},
	},
})
