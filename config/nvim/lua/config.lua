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

-- require 'colorizer'.setup {
--   '*';
-- }

local present, nvim_tree = pcall(require, "nvim-tree")
if present then
  nvim_tree.setup {
   filters = {
      dotfiles = false,
   },
    view = {
      width = 20,
      side = "left",
      hide_root_folder = false,
    },
    disable_netrw = true,
    hijack_cursor = true,
    update_cwd = true,
    update_to_buf_dir = {
      auto_open = false,
    },
  system_open = {
    cmd  = open,
    args = {}
  },
    git = {
       enable = false,
       ignore = false,
    },
  }
  vim.g.nvim_tree_indent_markers = 1
end
