local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
-- if not mason_null_ls_status then
--   return
-- end

-- enable mason
mason.setup()

-- mason_lspconfig.setup({
-- 	-- list of servers for mason to install
-- 	ensure_installed = {
-- 		-- "tsserver",
-- 		"html",
-- 		"cssls",
-- 		"tailwindcss",
-- 		"lua_ls",
-- 		"emmet_ls",
-- 		"rust_analyzer",
-- 		"clangd",
-- 		"pyright",
-- 	},
-- 	-- auto-install configured servers (with lspconfig)
-- 	automatic_installation = false, -- not the same as ensure_installed
-- })

-- mason_null_ls.setup({
-- 	-- list of formatters & linters for mason to install
-- 	ensure_installed = {
-- 		"prettier", -- ts/js formatter
-- 		-- "clag-format",
-- 		"stylua", -- lua formatter
-- 		"eslint_d", -- ts/js linter
-- 		"pint",
-- 	},
-- 	-- auto-install configured formatters & linters (with null-ls)
-- 	automatic_installation = true,
-- })
