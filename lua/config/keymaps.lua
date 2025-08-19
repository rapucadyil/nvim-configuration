vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", {desc="Open Oil file explorer in parent directory of current file"})
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end,
    {desc = "Open Diagnostics in Float"}

)

vim.keymap.set("n", "<leader>e", function() require('snacks').explorer() end,
    {desc = "Open explorer" }
)
