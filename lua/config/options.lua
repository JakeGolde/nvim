local opt = vim.opt

opt.number = true             -- Show line numbers
opt.relativenumber = true     -- Relative line numbers for fast Vim movement
opt.tabstop = 4               -- 4 spaces per tab
opt.shiftwidth = 4
opt.expandtab = true          -- Use spaces instead of tabs
opt.termguicolors = true      -- Enable 24-bit RGB color support
opt.clipboard = "unnamedplus" -- Share clipboard with system
opt.signcolumn = "yes"        -- Keep sign column open for warnings/errors
