# This is my own Preset for vim. (Author) [^1]

---

[^1]: The author of the .vimrc file is [Benedikt](https://github.com/FellowFellow)

## Setup


#### Vim 


###### Unix

```sh
sudo apt install vim
```

#### Vundle

###### Git

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

#### vim-plug

###### cURL

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Installing


#### .vimrc

Copy the .vimrc from the Repository into your home directory.

```sh
cp vim-presets/.vimrc ~/
```


Restart your terminal and open the `.vimrc` file.

```sh
vim .vimrc
```


### Installing Plug

To Install the Plugs press `:` and type this into your commandline in Vim

```sh
:PlugInstall
```


### Installing Plugin

To Install the Plugins press `:` and type this into your commandline in Vim

```sh
:PluginInstall
```



Everything should now be set up.

