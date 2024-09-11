return {
    {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      local putils = require("telescope.previewers.utils")
      vim.keymap.set('n','<C-s>',builtin.find_files,{}) -- Finding Files
      vim.keymap.set('n','<leader>sf', builtin.live_grep, {}) -- Live Grep
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
            }
          }
        }
      require("telescope").load_extension("ui-select")

    end
  },
  {
	'smartpde/telescope-recent-files'
	}
}

