local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.opt.colorcolumn = "90"

map('n', '<leader>ga', '<cmd>Git add .<CR>')
map('n', '<leader>gc', '<cmd>Git commit<CR>')
map('n', '<leader>gp', '<cmd>Git push<CR>')
map('n', '<leader>gh', '<cmd>diffget //3<CR>')
map('n', '<leader>gu', '<cmd>diffget //2<CR>')

map('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>')

map('n','<leader>q','<cmd>bp|sp|bn|bd<CR>')

map('n', '<leader>ie','<cmd>GoIfErr<CR>')

map('t', '<C-/>', '<C-\\><C-n>')

map("n", "<leader>ca", '<cmd>lua vim.lsp.buf.code_action, { noremap = true, silent = true }<CR>')

