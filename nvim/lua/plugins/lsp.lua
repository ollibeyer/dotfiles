return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- Warnung unterdrücken, da wir die etablierte API nutzen
    vim.notify = (function(msg, level, opts)
      if msg:find("deprecated") then return end
      vim.lsp.log.warn(msg)
    end)

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "pyright" },
    })

    local lspconfig = require("lspconfig")
    local servers = { "lua_ls", "pyright" }

    for _, server in ipairs(servers) do
      lspconfig[server].setup({})
    end
  end
}
