local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    return
end

local keymap = vim.keymap -- for conciseness enable keybinds only for when lsp server available

local on_attach = function()
    keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    keymap.set("n", "K", vim.lsp.buf.hover, opts)
    keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
    keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
    keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
    keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
    -- keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
    keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)    -- got to declaration
    -- keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
    keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
    -- keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
    keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts) -- smart rename keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
    -- keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
    -- -- keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
    keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side
    vim.diagnostic.config({
        virtual_text = true,
        underline = {
            severity = vim.diagnostic.severity.HINT,
        },
    })
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- configure html server
vim.lsp.config["html"] = {
    capabilities = capabilities,
    on_attach = on_attach,
}

-- configure python server
vim.lsp.config["pyright"] = {
    capabilities = capabilities,
    on_attach = on_attach,
}

-- configure html server
-- lspconfig["intelephense"].setup({
-- 	capabilities = capabilities,
-- 	on_attach = on_attach,
-- })
-- configure typescript server with plugin

-- configure css server
vim.lsp.config("cssls", {
    capabilities = capabilities,
    on_attach = on_attach,
})

-- configure tailwindcss server
vim.lsp.config("tailwindcss", {
    capabilities = capabilities,
    on_attach = on_attach,
})

-- configure emmet language server
vim.lsp.config("emmet_ls", {
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
})

-- configure lua server (with special settings)
vim.lsp.config["lua_ls"] = {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = { -- custom settings for lua
        Lua = {
            -- make the language server recognize "vim" global
            -- diagnostics = {
            --     globals = { "vim" },
            -- },
            workspace = {
                -- make language server aware of runtime files
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
            hint = {
                enable = true,
            },
        },
    },
}

vim.lsp.config["clangd"] = {
    capabilities = capabilities,
    on_attach = on_attach,
    cmd = {
        "clangd",
        "--background-index",
        "--pch-storage=memory",
        "--all-scopes-completion",
        "--pretty",
        "--header-insertion=never",
        "-j=4",
        "--inlay-hints",
        "--header-insertion-decorators",
        "--function-arg-placeholders",
        "--completion-style=detailed",
        "--query-driver=/usr/bin/clang++,/usr/local/cuda/bin/nvcc",
        -- "--background-index",
        -- "--pch-storage=memory",
        -- "--clang-tidy",
        -- "--offset-encoding=utf-16",
        -- "--all-scopes-completion",
        -- "--pretty",
        -- "--header-insertion=never",
        -- "-j=4",
        -- "--header-insertion-decorators",
    },

    -- INFO: deprecrated
    -- root_dir = require("lspconfig").util.root_pattern("src"),
    filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' },
    root_markers = {
        '.clangd',
        '.clang-tidy',
        '.clang-format',
        'compile_commands.json',
        'compile_flags.txt',
        'configure.ac', -- AutoTools
        '.git',
      },
    -- init_options = { fallbackFlags = { "-std=c++2a" } },
}

vim.lsp.enable("clangd")
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("html")
