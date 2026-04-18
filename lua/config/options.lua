-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.env.TERM_PROGRAM == "Ghostty" then
  vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
end

if vim.fn.has("win32") == 1 then
  -- 指向 zsh 的路径，如果 zsh 不在 PATH 里，请写绝对路径
  -- 例如 "C:/msys64/usr/bin/zsh.exe"
  vim.opt.shell = "zsh"

  -- 关键：将参数从默认的 "/s /c" 改为 "-c"
  vim.opt.shellcmdflag = "-c"

  -- 关键：修正引号处理方式，否则复杂的路径会报错
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""

  -- 修正重定向符号
  vim.opt.shellpipe = ">"
  vim.opt.shellredir = ">"
end
