local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- packer itself
    use "wbthomason/packer.nvim"

    -- themes
    use "catppuccin/nvim"

    -- completion + lsp
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use "L3MON4D3/LuaSnip"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/nvim-cmp"

    -- telescope
    use {"nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim"}

    -- treesitter
    use "nvim-treesitter/nvim-treesitter"

    --nvim-tree
    use {"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons"}

    -- lualine & bufferline
    use {"nvim-lualine/lualine.nvim", requires = "kyazdani42/nvim-web-devicons"}
    use {"akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons"}

    -- alpha
    use "goolord/alpha-nvim"
    
  if packer_bootstrap then
    require('packer').sync()
  end
end)
