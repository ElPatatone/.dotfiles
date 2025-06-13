local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
	return
end

-- load vs-code like snippets from plugins (e.g. friendly-snippets)
require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
		["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
		["<Tab>"] = nil,
		["S-Tab>"] = nil,
	}),
	-- disable completion with tab
	-- this helps with copilot setup
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }, -- lsp
		{ name = "luasnip" }, -- snippets
		{ name = "buffer" }, -- text within current buffer
		{ name = "path" }, -- file system paths
		{ name = "neorg" },
	}),
})

-- commands for extra snippets
require("luasnip").filetype_extend("javascript", { "javascriptreact" })
require("luasnip").filetype_extend("javascript", { "html" })
