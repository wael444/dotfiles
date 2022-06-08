require("indent_blankline").setup {
    char = "│",
    show_current_context = true,
    show_current_context_start = true,
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
}


require 'colorizer'.setup {
	'*'; 
--  '!vim'; -- Exclude vim from highlighting.
}

require'nvim-tree'.setup {
	filters = { dotfiles = false, },
	view = {
		width = 20,
		side = "left",
		hide_root_folder = false,
    },
}
