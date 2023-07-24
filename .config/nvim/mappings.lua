local M = {}

M.disabled = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  },
}

M.keys = {
  -- normal mode
  n = {
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Replace word under cursor" },
  },
  -- visual mode
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move lines down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move lines up" },
  },
  -- insert mode
  i = {},
}

return M
