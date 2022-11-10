# Vim Presets

---

## This is my own Preset for vim.


### Downloads


#### Vim 


###### Unix


```sh
sudo apt install vim
```

#### Vundle


```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

#### vim-plug


```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Installing


#### .vimrc

Move the .vimrc from the Repository into your home directory.

```sh
mv vim-presets/.vimrc ~/
```


Restart your terminal and open the `.vimrc` file.

```sh
vim .vimrc
```


### Installing Plug

To Install the Plugs press `:` and type this into your commandline in Vim

```sh
PlugInstall
```


### Installing Plugin

To Install the Plugins press `:` and type this into your commandline in Vim

```sh
PluginInstall
```



Everything should now be set up.

