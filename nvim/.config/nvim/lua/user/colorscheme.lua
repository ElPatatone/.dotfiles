-- local colorscheme = "emperor"
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then vim.notify("colorscheme " .. colorscheme .. " not found!") return
-- end
local palette = require("black-metal.palette.emperor")

-- Change palette *before* setup
   palette.alt = "#9e9eff"
   palette.type = "#bb9af7"
   palette.keyword = "#FFAB70"
   palette.operator = "#63616b"
   palette.string = "#95E19A" -- first accent
   palette.diag_yellow = "#FFCC99"
   -- palette.func = "#888888"

-- palette.alt_bg = "#20173B",
-- palette.bg = "#000000",
-- palette.comment = "#505050",
-- palette.fg = "#c1c1c1",
-- palette.keyword = "#999999",
-- palette.line = "#000000",
-- palette.number = "#aaaaaa",
-- palette.property = "#c1c1c1",
-- palette.visual = "#333333",
   -- palette.diag_red = "#FF5555"
-- palette.diag_blue = "#999999",
-- palette.diag_green = "#6e4c4c",

   -- palette.keyword = "#ff8800"

--[palette]
-- pure_white = "#c0c0c0"      # Clean white for UI, functions, and imports
-- near_black = "#0c0c0c"      # Near-black background (not pure #000000)
-- dark_slate = "#2A2A3A"      # Slightly lighter UI elements
-- selection_gray = "#3A3A4A"  # Subtle selection highlight
-- muted_gray = "#6A6A7A"      # Low-contrast gray for punctuation/UI
-- light_gray = "#A0A0B0"      # Variables and inactive text
-- soft_purple = "#C792EA"     # Package names, attributes
-- gentle_teal = "#4EC9B0"     # Keywords, built-ins
-- bright_cyan = "#56B6C2"     # func keyword
-- soft_blue = "#82AAFF"       # Struct fields, cursor
-- golden_yellow = "#E5C07B"   # Types
-- soft_orange = "#FFAB70"     # Operators, warnings
-- bright_orange = "#FF8C42"   # Goto labels, breakpoints
-- vivid_pink = "#FF79C6"      # Special tokens, jump labels
-- muted_green = "#7A9A7A"     # Comments
-- lime_green = "#95E19A"      # Strings
-- soft_peach = "#FFCC99"      # Constants
-- soft_cyan = "#89DDFF"       # Numbers, hints
-- vivid_red = "#FF5555"

require("black-metal").setup({
  theme = "emperor",
  variant = "dark",
  alt_bg = false,
  -- If true, docstrings will be highlighted like strings, otherwise they will be
  -- highlighted like comments. Note, behavior is dependent on the language server.
  colored_docstrings = true,
  -- If true, highlights the {sign,fold} column the same as cursorline
  cursorline_gutter = true,
  -- If true, highlights the gutter darker than the bg
  dark_gutter = false,
  -- if true favor treesitter highlights over semantic highlights
  favor_treesitter_hl = false,
  -- Don't set background of floating windows. Recommended for when using floating
  -- windows with borders.
  plain_float = false,
  -- Show the end-of-buffer character
  show_eob = true,
  -- If true, enable the vim terminal colors
  term_colors = true,
  -- Keymap (in normal mode) to toggle between light and dark variants.
  toggle_variant_key = nil,
  -- Don't set background
  transparent = false,

  -----DIAGNOSTICS and CODE STYLE-----
  --
  diagnostics = {
    darker = true, -- Darker colors for diagnostic
    undercurl = true, -- Use undercurl for diagnostics
    background = true, -- Use background color for virtual text
  },
  -- The following table accepts values the same as the `gui` option for normal
  -- highlights. For example, `bold`, `italic`, `underline`, `none`.
  code_style = {
    comments = "italic",
    conditionals = "none",
    functions = "none",
    keywords = "none",
    headings = "bold", -- Markdown headings
    operators = "none",
    keyword_return = "none",
    strings = "none",
    variables = "none",
  },

  -----PLUGINS-----
  --
  -- The following options allow for more control over some plugin appearances.
  plugin = {
    lualine = {
      -- Bold lualine_a sections
      bold = true,
      -- Don't set section/component backgrounds. Recommended to not set
      -- section/component separators.
      plain = false,
    },
    cmp = { -- works for nvim.cmp and blink.nvim
      -- Don't highlight lsp-kind items. Only the current selection will be highlighted.
      plain = false,
      -- Reverse lsp-kind items' highlights in blink/cmp menu.
      reverse = false,
    },
  },

  -- CUSTOM HIGHLIGHTS --
  --
  -- Override default colors
  -- colors = {
  --   purple = "#817faf",  -- new purple for diagnostic red
  --   orange = "#ff8800",
  -- },
  highlights = {
    ["@diag_red"] = { fg = "$diag_red" },
    ["@alt"] = { fg = "$alt" },
    ["@diag_yellow"] = { fg = "$diag_yellow" },
    ["@keyword"] = { fg = "$keyword" },
  },
})
-- Convenience function that simply calls `:colorscheme <theme>` with the theme
-- specified in your config.
require("black-metal").load()
