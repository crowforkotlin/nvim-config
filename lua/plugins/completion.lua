	return {
		{
			"hrsh7th/nvim-cmp",
			dependencies = {
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"L3MON4D3/LuaSnip",
				"saadparwaiz1/cmp_luasnip",
			},
			opts = function(_, opts)
				local cmp = require("cmp")
				local luasnip = require("luasnip")
				
				opts.performance = {
					debounce = 60,
					throttle = 20,
					fetching_timeout = 200,
				}
				
				opts.completion = {
					autocomplete = {
						cmp.TriggerEvent.TextChanged,
					},
					completeopt = "menu,menuone,noselect",
					keyword_length = 1,
				}
				
				opts.mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-n>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				})
				
				opts.sources = cmp.config.sources({
					{ name = "nvim_lsp", priority = 1000, max_item_count = 20 },
					{ name = "luasnip", priority = 750, max_item_count = 5 },
					{ name = "buffer", priority = 500, max_item_count = 10 },
					{ name = "path", priority = 250, max_item_count = 10 },
				})
				
				return opts
			end,
		},
	}