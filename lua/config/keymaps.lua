---@diagnostic disable: undefined-global
vim.keymap.set(
	"n",
	"-",
	"<cmd>Oil --float<CR>",
	{ desc = "Open Oil file explorer in parent directory of current file" }
)
vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

vim.keymap.set("n", "<leader>e", function()
	require("snacks").explorer()
end, { desc = "Open explorer" })

-- Remaps for barbar
vim.keymap.set("n", "<leader>bn", "<cmd>BufferNext<CR>", { desc = "Go to the next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>BufferPrevious<CR>", { desc = "Go to the previous buffer" })
vim.keymap.set("n", "<leader>b1", "<Cmd>BufferGoto 1<CR>", { desc = "Go to buffer 1" })
vim.keymap.set("n", "<leader>b2", "<Cmd>BufferGoto 2<CR>", { desc = "Go to buffer 2" })
vim.keymap.set("n", "<leader>b3", "<Cmd>BufferGoto 3<CR>", { desc = "Go to buffer 3" })
vim.keymap.set("n", "<leader>b4", "<Cmd>BufferGoto 4<CR>", { desc = "Go to buffer 4" })
vim.keymap.set("n", "<leader>b5", "<Cmd>BufferGoto 5<CR>", { desc = "Go to buffer 5" })
vim.keymap.set("n", "<leader>b6", "<Cmd>BufferGoto 6<CR>", { desc = "Go to buffer 6" })
vim.keymap.set("n", "<leader>b7", "<Cmd>BufferGoto 7<CR>", { desc = "Go to buffer 7" })
vim.keymap.set("n", "<leader>b8", "<Cmd>BufferGoto 8<CR>", { desc = "Go to buffer 8" })
vim.keymap.set("n", "<leader>b9", "<Cmd>BufferGoto 9<CR>", { desc = "Go to buffer 9" })
vim.keymap.set("n", "<leader>b0", "<Cmd>BufferLast<CR>", { desc = "Go to the last buffer" })
vim.keymap.set("n", "<leader>bc", "<Cmd>BufferClose<CR>", { desc = "Close current buffer" })
