function ColorMyPencils(color) 
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		'folke/tokyonight.nvim',
		config = function()
			vim.cmd.colorscheme 'tokyonight'
			ColorMyPencils()
		end
	},
	{
		'rose-pine/neovim',
        name = 'rose-pine',
		config = function()
			vim.cmd.colorscheme 'rose-pine'
			ColorMyPencils(name)
		end
	},
}

