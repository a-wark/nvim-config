return {
  "simrat39/rust-tools.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local rt = require("rust-tools")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lsp_on_attach = require("plugins.lspconfig").on_attach
    -- local lsp_capabilities = require("plugins.lspconfig").capabilities
    local keymap = vim.keymap

    local mason_registry = require("mason-registry")
    local codelldb = mason_registry.get_package("codelldb")
    local extension_path = codelldb:get_install_path() .. "/extension/"
    local codelldb_path = extension_path .. "adapter/codelldb"
    local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"

    local opts = { noremap = true, silent = true }

    local on_attach = function(_, bufnr)
      opts.buffer = bufnr

      opts.desc = "Restart LSP"
      keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary

      opts.desc = "See available code actions"
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

      opts.desc = "Smart rename"
      keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

      opts.desc = "Show documentation for what is under cursor"
      keymap.set("n", "K", vim.lsp.buf.hover, opts)

      opts.desc = "Show buffer diagnostics"
      keymap.set("n", "<leader>K", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

      opts.desc = "Show line diagnostics"
      keymap.set("n", "<leader>k", vim.diagnostic.open_float, opts) -- show diagnostics for line

      opts.desc = "Go to previous diagnostic"
      keymap.set("n", "[k", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

      opts.desc = "Go to next diagnostic"
      keymap.set("n", "]k", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

      -- Hover actions
      keymap.set("n", "<leader>rh", rt.hover_actions.hover_actions, { buffer = bufnr, desc = "Hover actions" })
      -- Code action groups
      keymap.set("n", "<leader>ra", rt.code_action_group.code_action_group,
        { buffer = bufnr, desc = "Code action groups" })
    end

    rt.setup({
      dap = {
        adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)
      },
      server = {
        capabilities = capabilities,
        on_attach = on_attach,
        -- on_attach = function(_, bufnr)
        --   lsp_on_attach(_, bufnr)
        --
        --   -- Hover actions
        --   keymap.set("n", "<leader>rh", rt.hover_actions.hover_actions, { buffer = bufnr })
        --   -- Code action groups
        --   keymap.set("n", "<leader>ra", rt.code_action_group.code_action_group, { buffer = bufnr })
        -- end,
        settings = {
          ["rust-analyzer"] = {
            imports = {
              granularity = {
                group = "module",
              },
              prefix = "self",
            },
            cargo = {
              buildScripts = {
                enable = true,
              },
            },
            procMacro = {
              enable = true,
            },
          },
        },
        -- on_attach = function(_, bufnr)
        --   require("plugins.lspconfig").on_attach(_, bufnr)
        --   -- Hover actions
        --   keymap.set("n", "<leader>rh", rt.hover_actions.hover_actions, { buffer = bufnr })
        --   -- Code action groups
        --   keymap.set("n", "<leader>ra", rt.code_action_group.code_action_group, { buffer = bufnr })
        -- end
      },
      tools = {
        hover_actions = {
          auto_focus = true,
        }
      }
    })
  end
}
