require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "rust", "python", "norg", "javascript", "html", "css", "scss" },
    sync_install = false,
    auto_install = true,

    highlight = {
        -- `false` will disable the whole extension
        disable = { "markdown" },
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true, disable = { "lua" } },

    rainbow = {
        enable = true,
        disable = { "html", "javascript" },
        colors = {
            -- "#68a0b0",
            -- "#946EaD",
            -- "#c7aA6D",
            "Gold",
            "Orchid",
            "DodgerBlue",
            -- "Cornsilk",
            -- "Salmon",
            -- "LawnGreen",
        },
    },
}
