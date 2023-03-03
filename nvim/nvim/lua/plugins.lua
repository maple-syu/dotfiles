vim.cmd [[packadd packer.nvim]]

print('Loading plugins...')

local use = require('packer').use

return require('packer').startup(function()
	use {'wbthomason/packer.nvim'}

	use 'neovim/nvim-lspconfig' 
	
	-- completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'

	use 'hrsh7th/nvim-cmp'
--	use {'hrsh7th/nvim-cmp',
--	config = function()
--		require'cmp'.setup{
--			snippet = {
--				expand = function(args)
--					require'luasnip'.lsp_expand(args.body)
--				end
--			},
--			sources = {
--				{name = 'luasnip'},
--			},
--		}
--	end
--	}


	-- snippet
--	use 'L3MON4D3/LuaSnip'
--	use { 'saadparwaizl/cmp_luasnip' }

	use 'dcampos/nvim-snippy'
	use 'dcampos/cmp-snippy'

	-- tree
	use {'kyazdani42/nvim-tree.lua',
	requires = {
		'kyazdani42/nvim-web-devicons', -- icons
	}}
	 
end)

-- require'lspconfig'.clangd.setup{}
