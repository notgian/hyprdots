local capabilities = require('blink.cmp').get_lsp_capabilities()

capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}

local lspList = {
    'lua_ls',
    'ccls',
    'gopls',
    'pylsp',
    'rlangserver',
    'html',
    'css',
    'json',
    'ts_ls',
    'jdtls'
}

-- enabling and configuring lsps

for i in pairs(lspList) do
    vim.lsp.config[lspList[i]].capabilities = capabilities
    vim.lsp.config[lspList[i]].settings = (lspList[i] == 'ts_ls') and {
        javascript = {
            suggest = { completeFunctionCalls = true },
        },
    } or {}
    vim.lsp.enable(lspList[i])
end

-- diagnostics options

vim.diagnostic.enable = true
vim.diagnostic.config({
    virtual_lines = {
        severity = vim.diagnostic.severity.ERROR,
    },
    virtual_text = {
        severity = vim.diagnostic.severity.WARN,
        current_line = true
    },
    underline = {
        severity = vim.diagnostic.severity.WARN
    },
    signs = true,
    update_in_insert = true
})

-- vim.lsp.enable('jdtls')

