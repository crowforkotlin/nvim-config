-- 基础设置
vim.env.HTTP_PROXY = "http://127.0.0.1:7890"
vim.env.HTTPS_PROXY = "http://127.0.0.1:7890"

-- 加载配置
require("config.options")
require("config.keymaps")
require("config.lazy")