-- ~/.config/nvim/lua/plugins/kotlin-lsp.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      kotlin_language_server = {
        mason = false, -- we’re using JetBrains kotlin-lsp, not fwcd
        cmd = { "D:\\program\\kotlin-lsp\\kotlin-lsp.cmd", "--stdio" }, -- or: "--lsp=stdio" if needed
      },
    },
  },
}
