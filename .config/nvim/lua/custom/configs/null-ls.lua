-- local null_ls = require("null-ls")
-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- go
  b.formatting.gofmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}

--local opts = {
--  sources = {
--    -- Prettier
--    null_ls.builtins.formatting.prettier,
--    -- Lua
--    null_ls.builtins.formatting.stylua,
--    -- Python
--    null_ls.builtins.diagonostics.mypy,
--    null_ls.builtins.diagonostics.ruff,
--    null_ls.builtins.formatting.black,
--  },
-- Format on save
--      on_attach = function(client, bufnr)
--        if client.supports_method("textDocument/formatting") then
--            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
--            vim.api.nvim_create_autocmd("BufWritePre", {
--                group = augroup,
--                buffer = bufnr,
--                callback = function()
--                    vim.lsp.buf.format({ bufnr = bufnr })
--                    vim.lsp.buf.formatting_sync()
--                end,
--            })
--    end
--    end
--}

-- return opts
