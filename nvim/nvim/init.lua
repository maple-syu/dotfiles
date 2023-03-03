require('plugins')
require('cmpconf')

vim.cmd([[set number]])
-- require 

vim.cmd([[
    augroup packer_user_config
        autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])


vim.g.leader = ' '

local capa = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.clangd.setup{ capabilities = capa }

require'lspconfig'.cmake.setup{ capabilities = capa }

-- require'lspconfig'.

--snippy mappings setup 
require('snippy').setup({
    mappings = {
        is = {
            ['<Tab>'] = 'expand_or_advance',
            ['<S-Tab>'] = 'previous',
        },
        nx = {
            ['<leader>x'] = 'cut_text',
        },
    },
})

-- Tree
require('nvim-tree').setup({
	sort_by = "case_sensitive",
	open_on_setup = true,
    open_on_setup_file = true,
	view = {
		adaptive_size = false,
		mappings = {
			list = {
--				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = { },
	filters = { dotfiles = true, },
})

vim.diagnostic.config({
    update_in_insert=true,

})


vim.cmd([[set tabstop=4]])
vim.cmd([[set shiftwidth=4]])
vim.cmd([[set expandtab]])


