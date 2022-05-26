require('base16-colorscheme').setup({
	base00 = "#000000",
	base01 = "#000000",
	base02 = "#202020",
	base03 = "#404040",
	base04 = "#404040",
	base05 = "#bbbbbb",
	base06 = "#909090",
	base07 = "#dfdfdf",
	base08 = "#d04444",
	base09 = "#d04444",
	base0A = "#fac549",
	base0B = "#8fbb3d",
	base0C = "#67b58d",
	base0D = "#619bbb",
	base0E = "#9463d1",
	base0F = "#d04444",
})

vim.cmd [[
  exe "hi StatusInactive guibg=background guifg=".g:terminal_color_8
  exe "hi StatusNormal guifg=background guibg=".g:terminal_color_2
  exe "hi StatusReplace guifg=background guibg=".g:terminal_color_1
  exe "hi StatusInsert guifg=background guibg=".g:terminal_color_2
  exe "hi StatusCommand guifg=background guibg=".g:terminal_color_3
  exe "hi StatusVisual guifg=background guibg=".g:terminal_color_4
  exe "hi StatusTerminal guifg=background guibg=".g:terminal_color_5
  exe "hi NvimTreeGitDirty guifg=".g:terminal_color_1
  exe "hi NvimTreeGitNew guifg=".g:terminal_color_2
  exe "hi NvimTreeGitDeleted guifg=".g:terminal_color_1
  exe "hi NvimTreeGitRenamed guifg=".g:terminal_color_3
  exe "hi NvimTreeSpecialFile guifg=".g:terminal_color_5
  exe "hi NvimTreeExecFile guifg=".g:terminal_color_2
  exe "hi NvimTreeImageFile guifg=".g:terminal_color_7
  hi EndOfBuffer guifg=background
  hi LineNr guibg=background
  hi SignColumn guibg=background
  hi VertSplit guibg=background
  hi! link TabLineSel StatusInsert
  hi TabLine guibg=background
  hi TabLineFill guibg=background
  hi FoldColumn guibg=background
  hi DiffAdd guibg=background
  hi DiffChange guibg=background
  hi DiffDelete guibg=background
  hi DiffText guibg=background
]]
