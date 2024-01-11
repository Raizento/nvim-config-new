local cmp_lsp_status, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_lsp_status then
  print("Could not load cmp_nvim_lsp!")
  return
end

local lsp_status, lsp_config = pcall(require, "lspconfig")
if not lsp_status then
  print("Could not load LspConfig!")
  return
end

local neodev_status, neodev = pcall(require, "neodev")
if not neodev_status then
  print("Could not load neodev, using normal lua_ls config...")
else
  neodev.setup({})
end

local capabilities = cmp_lsp.default_capabilities()

local M = {}

M.handlers = {
  function(server_name)
    lsp_config[server_name].setup({
      capabilities = capabilities,
    })
  end,
}

local path = vim.fn.stdpath("config") .. "/lua/raizento/lsp/config"
local prefix = "raizento.lsp.config"

for fname in io.popen("ls -pa " .. path .. " | grep -v /"):lines() do
  if fname ~= "." and fname ~= ".." then
    local server_name = fname:match("(.+)%..+$")
    local module_name = prefix .. "." .. server_name

    local config = require(module_name).config(lsp_config, capabilities)
    M.handlers[server_name] = config
  end
end

return M
