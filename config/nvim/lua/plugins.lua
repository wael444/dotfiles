local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	-- colosrchemes
  use 'RRethy/nvim-base16'
	use "rebelot/kanagawa.nvim"
--  use 'norcalli/nvim-colorizer.lua'
	use 'cocopon/iceberg.vim'
	use 'ghifarit53/tokyonight-vim'
	use 'tiagovla/tokyodark.nvim'
	-- everything else
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
	use 'nvim-treesitter/nvim-treesitter'
	use "lukas-reineke/indent-blankline.nvim"
  if packer_bootstrap then
    require('packer').sync()
  end
end)

