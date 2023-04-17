require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.norg.concealer"] = {},
        ["core.norg.dirman"] = {
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
