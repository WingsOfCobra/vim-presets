# This is my own Preset for vim. (Author) [^1]


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

---

## Features

### Settings

- Automatically adds line numbers
- Allows backspace in insert mode
- Stores lots of commandline history
- Shows incomplete commands down at the bottom
- Shows current mode down at the bottom
- Disables Cursor blink
- Deactivates sounds
- Reloads files that are changed outside of vim
- Disables Ex message

### Plugins

- Vundle
- SimplyFold
- indentpython
- synastics
- vim-flake8
- vim-nerdtree-tabs
- nerdtree
- ctrlp
- vim-fugitive


### Plugs

- vim-airline
- vim-airline-themes
- nerdtree (again)

### Keybinds

Everyone of these keybinds hast to be executed in ==normal mode==

| Keybind | Description |
| ----------- | ----------- |
| `f`  | Toggle Nerdtree |
| `q` | Close file |
| `CTRL + q` | Force Close file |
| `x` | Save and close file  |
| `w` | Write file |
| `CTRL + c` | Copy line |
| `CTRL + v` | Paste line |
| `CTRL + y` | Scroll up |
| `CTRL + e` | Scroll down |


