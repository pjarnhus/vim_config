## Installing Vim on Windows with Anaconda support
1. Download [NeoVim](https://github.com/neovim/neovim/releases)
2. Run `conda install -c conda-forge neovim`
3. Create %LOCALAPPDATA%\nvim\init.vim and insert
```vim
let g:python3_host_prog = 'C:\Users\bb9946\AppData\Local\Continuum\anaconda3\python.exe'
```
