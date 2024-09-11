return {
    {
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
    end
    },
    {
     "williamboman/mason-lspconfig.nvim",
     config = function()
        require("mason-lspconfig").setup({
            ensure_installed={"lua_ls","pyright","html","cssls","clangd"}
            -- "clangd","cssls","html","pylsp",
        })
     end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
    	    vim.keymap.set('n','W',vim.lsp.buf.hover,{})
    	    vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
            vim.keymap.set({'n','v'},'<space>ca',vim.lsp.buf.code_action, {})
        end
    }
}
