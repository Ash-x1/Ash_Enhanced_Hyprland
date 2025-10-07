-- ملف: lua/lsp.lua
-- إعداد LSP بالطريقة المستقرة (القديمة) باستخدام lspconfig

-- لو عندك nvim-cmp للإكمال الذكي:
local has_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
local capabilities = vim.lsp.protocol.make_client_capabilities()
if has_cmp then
  capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
end

-- دالة للتشغيل عند ربط السيرفر بكل ملف
local on_attach = function(client, bufnr)
  local buf = bufnr
  local km = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = buf, desc = desc })
  end

  -- مفاتيح أساسية
  km("n", "K", vim.lsp.buf.hover, "Hover Docs")
  km("n", "gd", vim.lsp.buf.definition, "Go to Definition")
  km("n", "gD", vim.lsp.buf.declaration, "Go to Declaration")
  km("n", "gr", vim.lsp.buf.references, "References")
  km("n", "<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
  km("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
  km("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, "Format")
end

-- استدعاء lspconfig
local lspconfig = require("lspconfig")

-- Lua
lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- HTML
lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- CSS
lspconfig.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- JavaScript / TypeScript
lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

