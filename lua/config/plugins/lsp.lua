return {
  {
    "neovim/nvim-lspconfig",
    version = "v1.*", -- Compatible with Neovim 0.10
    dependencies = {
      "williamboman/mason.nvim",
      { "williamboman/mason-lspconfig.nvim", version = "v1.*" }, -- Pin mason-lspconfig to v1.x
    },
    config = function()
      require("mason").setup()
      
      local lspconfig = require("lspconfig")

      require("mason-lspconfig").setup({
        ensure_installed = { "clangd", "pyright" },
        handlers = {
          -- Default handler for auto-configured servers
          function(server_name)
            lspconfig[server_name].setup({})
          end,

          -- Custom override for clangd
          ["clangd"] = function()
            lspconfig.clangd.setup({
              cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--completion-style=detailed",
                "--header-insertion=iwyu",
              },
            })
          end,
        },
      })

      -- LSP Keybindings
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          local opts = { buffer = event.buf }
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        end,
      })
    end,
  },
}
