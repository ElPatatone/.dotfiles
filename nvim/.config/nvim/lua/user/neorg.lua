require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "~/notes/work",
                    home = "~/notes/home",
                }
            }
        },
        ["external.kanban"] = {},
        ["core.norg.completion"] = {},
        ["core.gtd.base"] = {},


    }
}
