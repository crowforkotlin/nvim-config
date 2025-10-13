-- 基础编辑器设置
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 100
vim.opt.completeopt = "menu,menuone,noselect"

-- Leader 键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Kotlin 文件类型检测
vim.filetype.add({
	extension = {
		kt = "kotlin",
		kts = "kotlin",
	},
})