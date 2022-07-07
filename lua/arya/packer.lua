-- Auto Install Packer
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  execute 'packadd packer.nvim'
end 

-- Packer
return require('packer').startup(function()

  use {'wbthomason/packer.nvim'}

  use {'sainnhe/everforest'}

  use {'morhetz/gruvbox'}

  use {'arcticicestudio/nord-vim'}

  use {'cocopon/iceberg.vim'}

  use {'neoclide/coc.nvim', branch = 'release'}

  use {'nvim-treesitter/nvim-treesitter', do = ':TSUpdate'}

  use {'mengelbrecht/lightline-bufferline'}

  use {'tpope/vim-fugitive'}

  use {'preservim/nerdcommenter'}

  use {'itchyny/lightline.vim'}

  use {'Yggdroot/indentLine'}

  use {'ryanoasis/vim-devicons'}

  use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }

end)
