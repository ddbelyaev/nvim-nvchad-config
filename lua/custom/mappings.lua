local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger",
    },
    ["<leader>do"] = {
      "<cmd> DapStepOver <CR>",
      "Steps over to next breakpoint",
    },
    ["<leader>du"] = {
      "<cmd> DapStepOut <CR>",
      "Steps out of breakpoint",
    },

    -- ["<leader>dus"] = {
    --   function ()
    --     local widgets = require 'dap.ui.widgets';
    --     local sidebar = widgets.sidebar(widgets.scopes);
    --     sidebar.open();
    --   end,
    --   "Open debugging sidebar"
    -- }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test"
    },
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gosj"] = {
      "<cmd>GoTagAdd json<CR>",
      "Add json to struct",
    },
    ["<leader>gosy"] = {
      "<cmd>GoTagAdd yaml<CR>",
      "Add yaml to struct",
    },
    ["<leader>gosv"] = {
      "<cmd>GoTagAdd validate<CR>",
      "Add validate to struct",
    },
    ["<leader>goat"] = {
      "<cmd>GoTestAdd<CR>",
      "Add test",
    },
    ["<leader>ie"] = {
      "<cmd>GoIfErr<CR>",
      "Add error"
    }
  }
}

return M
