return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			disable_background = true, -- Enable transparency
			-- disable_float_background = true, -- Transparent float windows
			highlight_groups = {
				Normal = { bg = "none" }, -- Ensure full transparency
				-- NormalFloat = { bg = "none" },
			},
		})

		-- Load the colorscheme
		vim.cmd([[colorscheme rose-pine]])

		-- Toggle background transparency
		local bg_transparent = true

		local toggle_transparency = function()
			bg_transparent = not bg_transparent
			require("rose-pine").setup({
				disable_background = bg_transparent,
			})
			vim.cmd([[colorscheme rose-pine]])
		end

		vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
	end,
}
