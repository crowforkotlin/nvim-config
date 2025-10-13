return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			-- 禁用自动格式化
			autoformat = false,
			-- 服务器配置
			servers = {
				-- 这里可以添加其他 LSP 服务器
			},
			-- Mason 设置
			setup = {},
		},
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
}