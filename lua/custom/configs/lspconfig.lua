local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gofumpt = true,
    linksInHover = false,
    templateExtensions = { "gohtml", "html" },
  },
}

-- lspconfig.als.setup {
-- }

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
}

lspconfig.elixirls.setup {
  filetypes = { "elixir", "eelixir", "heex", "surface" },
  root_dir = lspconfig.util.root_pattern("mix.exs", ".git") or vim.loop.os_homedir(),
  cmd = { "~/.local/share/nvim/mason/bin/elixir-ls" },
}

-- local configs = require("lspconfig.configs")
-- 
-- local lexical_config = {
--   filetypes = { "elixir", "eelixir", "heex", ".ex" },
--   cmd = {"/home/d/lexical/_build/dev/package/lexical/bin/start_lexical.sh"},
--   settings = {},
-- }
-- 
-- if not configs.lexical then
--   configs.lexical = {
--     default_config = {
--       filetypes = lexical_config.filetypes,
--       cmd = lexical_config.cmd,
--       root_dir = function(fname)
--         return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
--       end,
--       -- optional settings
--       settings = lexical_config.settings,
--     },
--   }
-- end
-- 
-- lspconfig.lexical.setup({})
