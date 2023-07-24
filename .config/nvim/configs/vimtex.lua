vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_view_method = "skim"
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_fold_enabled = 0
vim.g.vimtex_complete_enabled = 0
vim.g.vimtex_view_automatic = 1
vim.g.vimtex_syntax_enabled = 0
vim.g.maplocalleader = ","

function Clean()
  local patterns = { "*.aux", "*.fdb_latexmk", "*.fls", "*.log", "*.out", "*.synctex.gz", "*.toc", "*.dvi" }
  for _, pattern in ipairs(patterns) do
    local command = "rm -f " .. pattern
    os.execute(command)
  end
  vim.cmd 'echo "LaTeX output files cleaned up."'
end

vim.cmd "command! Clean lua Clean()"
