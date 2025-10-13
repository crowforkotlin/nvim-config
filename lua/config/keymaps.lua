local keymap = vim.keymap.set

-- 基础快捷键
keymap("n", "<leader>w", ":w<CR>", { desc = "保存文件" })
keymap("n", "<leader>q", ":q<CR>", { desc = "退出" })
keymap("n", "<leader>h", ":nohlsearch<CR>", { desc = "清除搜索高亮" })

-- 窗口导航
keymap("n", "<C-h>", "<C-w>h", { desc = "移动到左边窗口" })
keymap("n", "<C-j>", "<C-w>j", { desc = "移动到下边窗口" })
keymap("n", "<C-k>", "<C-w>k", { desc = "移动到上边窗口" })
keymap("n", "<C-l>", "<C-w>l", { desc = "移动到右边窗口" })

-- LSP 快捷键（LazyVim 会自动配置，这里只是补充）
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf }
		keymap("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "跳转到定义" }))
		keymap("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "悬停文档" }))
		keymap("n", "gi", vim.lsp.buf.implementation, vim.tbl_extend("force", opts, { desc = "跳转到实现" }))
		keymap("n", "gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, { desc = "查看引用" }))
		keymap("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "重命名" }))
		keymap("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "代码操作" }))
		keymap("n", "<leader>f", function()
			vim.lsp.buf.format({ async = true })
		end, vim.tbl_extend("force", opts, { desc = "格式化代码" }))
	end,
})