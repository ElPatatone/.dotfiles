local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end
-- local colors = {
-- 	blue = "#80a0ff",
-- 	cyan = "#79dac8",
-- 	black = "#080808",
-- 	white = "#c6c6c6",
-- 	red = "#ff5189",
-- 	violet = "#d183e8",
-- 	grey = "#303030",
-- }
--
-- local bubbles_theme = {
-- 	normal = {
-- 		a = { fg = colors.black, bg = colors.violet },
-- 		b = { fg = colors.white, bg = colors.grey },
-- 		c = { fg = colors.black, bg = colors.black },
-- 	},
--
-- 	insert = { a = { fg = colors.black, bg = colors.blue } },
-- 	visual = { a = { fg = colors.black, bg = colors.cyan } },
-- 	replace = { a = { fg = colors.black, bg = colors.red } },
--
-- 	inactive = {
-- 		a = { fg = colors.white, bg = colors.black },
-- 		b = { fg = colors.white, bg = colors.black },
-- 		c = { fg = colors.black, bg = colors.black },
-- 	},
-- }
--
lualine.setup({
	options = {
		icons_enabled = true,
		component_separators = "|",
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename", "branch" },
		lualine_c = { "fileformat" },
		lualine_x = {},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},

	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
	tabline = {},
	extensions = {},
})
