  1) you need to clone this file into your nvim folder

  2) you need to install nvim-packer(for managing plugins) <a>https://github.com/wbthomason/packer.nvim</a>

    linux : 
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

    windows :
    git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

  3) go to your nvim folder > lua > AxraxaDirectory > packer.lua 
  then use command :so and :PackerSync so plugins get donwloaded :)
  
  4)  also you will need nerdfonts so icons can work on lualine and nvimtree : 
 <a>https://www.nerdfonts.com/</a>
