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
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp"
            }
        },
        ["core.norg.qol.toc"] = {},
        ["core.gtd.base"] = {
            config = {
                workspace = "work" 
            }
        },
    }
}
