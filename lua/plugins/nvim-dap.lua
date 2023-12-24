return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "rcarriga/nvim-dap-ui",
        opts = {},
        config = function(_, opts)
          -- setup dap config by VsCode launch.json file
          require("dap.ext.vscode").load_launchjs()
          local dap = require("dap")
          local dapui = require("dapui")
          dapui.setup(opts)
          dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open({})
          end
          dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close({})
          end
          dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close({})
          end

          local keymap = vim.keymap
          keymap.set("n", "<leader>du", function() dap.toggle() end, { desc = "Dap UI" })
          keymap.set({ "n", "v" }, "<leader>de", function() dap.eval() end, { desc = "Eval" })
        end
      },
      {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = {
          "mason.nvim"
        },
        cmd = { "DapInstall", "DapUninstall" },
        opts = {
          -- Makes a best effort to setup the various debuggers with
          -- reasonable debug configurations
          automatic_installation = true,

          -- You can provide additional configuration to the handlers,
          -- see mason-nvim-dap README for more information
          handlers = {},

          -- You'll need to check that you have the required things installed
          -- online, please don't ask me how to install them :)
          ensure_installed = {
            -- Update this to ensure that you have the debuggers for the langs you want
          },
        },
      }
    },
    config = function()
      vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })
      local dap = require("dap")

      local keymap = vim.keymap
      keymap.set("n", "<leader>dB", function() dap.set_breakpoint(vim.fn.input("Breakpoint condition: ")) end,
        { desc = "Breakpoint Condition" })
      keymap.set("n", "<leader>db", function() dap.toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
      keymap.set("n", "<leader>dc", function() dap.continue() end, { desc = "Continue" })
      keymap.set("n", "<leader>da", function() dap.continue({ before = get_args() }) end, { desc = "Run with Args" })
      keymap.set("n", "<leader>dC", function() dap.run_to_cursor() end, { desc = "Run to Cursor" })
      keymap.set("n", "<leader>dg", function() dap.goto_() end, { desc = "Go to line (no execute)" })
      keymap.set("n", "<leader>di", function() dap.step_into() end, { desc = "Step Into" })
      keymap.set("n", "<leader>dj", function() dap.down() end, { desc = "Down" })
      keymap.set("n", "<leader>dk", function() dap.up() end, { desc = "Up" })
      keymap.set("n", "<leader>dl", function() dap.run_last() end, { desc = "Run Last" })
      keymap.set("n", "<leader>do", function() dap.step_out() end, { desc = "Step Out" })
      keymap.set("n", "<leader>dO", function() dap.step_over() end, { desc = "Step Over" })
      keymap.set("n", "<leader>dp", function() dap.pause() end, { desc = "Pause" })
      keymap.set("n", "<leader>dr", function() dap.repl.toggle() end, { desc = "Toggle REPL" })
      keymap.set("n", "<leader>ds", function() dap.session() end, { desc = "Session" })
      keymap.set("n", "<leader>dt", function() dap.terminate() end, { desc = "Terminate" })
      keymap.set("n", "<leader>dw", function() require("dap.ui.widgets").hover() end, { desc = "Widgets" })
    end,
  },

}
