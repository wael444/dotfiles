local map = vim.api.nvim_set_keymap

function nmap(keys, command)
  map("n", keys, command, { noremap = true, silent = false })
end

function vmap(keys, command)
  map("v", keys, command, { noremap = true, silent = false })
end

function nvmp(keys, command)
  map("n", keys, command, { noremap = true, silent = false })
  map("v", keys, command, { noremap = true, silent = false })
end

-- movement
nvmp("w", '<Up>')
nvmp("W", ':-10 <CR>')
nvmp("A", '<C-Left>')
nvmp("a", '<Left>')
nvmp("s", '<Down>')
nvmp("S", ':+10<CR>')
nvmp("d", '<Right>')
nvmp("D", '<S-Right>')
-- move lines
nmap("<C-W>", ":m .-2<CR>==")
nmap("<C-S>", ":m .+1<CR>==")
vmap("<C-W>", ":m '<-2<CR>gv=gv")
vmap("<C-S>", ":m '>+1<CR>gv=gv")

-- remove
nvmp("r", '<Delete>')
nmap("<C-r>", ':d<CR>')

-- mode
nvmp("e", '<Insert>')
nmap("<C-E>", '<Replace>')

-- redo/undo
nmap("z", '<Undo>')
nmap("Z", ':redo<CR>')

-- s
nmap("q", ':w<CR>')
nmap("<C-q>", ':wq<CR>')

nmap("<C-N>", ":NvimTreeToggle<CR>")
nmap("<C-E>", ":NvimTreeFocus<CR>")

-- tabs or related
nmap(",", ':tabprevious<CR>')
nmap(".", ':tabnext<CR>')
nmap("m", ':tabclose<CR>')
nmap("n", ':tabnew<CR>')
nmap("[", ":split +terminal | startinsert<CR>")
nmap("]", ":vs +terminal | startinsert<CR>")
