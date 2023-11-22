# HugoVim 😀🚀

This project aim to provide a sub-IDE-like vim(light, structured and strong) for vim users. Hope that more people will fall in love with Vim through this project😀😀😀.

Table of Contents
=================

* [HugoVim 😀🚀](#hugovim-)
   * [Environment🌏](#environment)
   * [Installation✌️😎](#installation️)
   * [How to use (I mean how to change config of it so that you can make yor own vim🚀)](#how-to-use-i-mean-how-to-change-config-of-it-so-that-you-can-make-yor-own-vim)
      * [1. ~/.vimrc](#1-vimrc)
      * [2. ~/.config/vim](#2-configvim)
      * [3. ~/.config/vim/config](#3-configvimconfig)
         * [3.1. init.vim](#31-initvim)
         * [3.4. keymaps](#34-keymaps)
            * [Table 1: Normal Mode](#table-1-normal-mode)
            * [Table 2: Visual Mode](#table-2-visual-mode)
            * [Table 3: Terminal Mode](#table-3-terminal-mode)
            * [Table 4: Other Plugins](#table-4-other-plugins)
            * [Syntastic Plugin](#syntastic-plugin)
            * [Markdown Preview Plugin](#markdown-preview-plugin)
            * [NERDTree Plugin](#nerdtree-plugin)
            * [Codium Plugin](#codium-plugin)
            * [Code Runner Plugin](#code-runner-plugin)
            * [Other Plugins](#other-plugins)
         * [3.5. plugins](#35-plugins)


## Environment🌏

- ubuntu-20.04
- vim >= 9.0
- git

## Installation✌️😎

What you should do is very simple, just follow the following steps:  
1. install git  
```bash
sudo apt install git
```
2. make sure there are no files names .vimrc under your home directory and no dir called vim in .config 
```bash
mv ~/.vimrc ~/.vimrc.bak
mv ~/.config/vim ~/.config/vim.bak
```
3. donwload & run install script  
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
4. ***Join it !!!*** 😋😍😍😍

## How to use (I mean how to change config of it so that you can make yor own vim🚀)

The mechanism of vim config starts from `~/.vimrc` file under your home directory. All the configs will load from this file. However, in order to make it more structured, we devide the original whole file to many parts as the form of fils and directories and move all of them to the `~/.config/vim` directory. Now I will introduce you the structure of configs.  

### 1. ~/.vimrc 
only one line in this file to import all configs in the directory `~/.config/vim`:   
```vim
import '~/.config/vim/config/init.vim'
```

### 2. ~/.config/vim
```
~/.config/vim    
├── README.md  
├── config  
├── install.sh   
└── share   
```

there are two sub-directories: `config` and `share`. Among them `config` is the config of vim and `share` is the place we strore all plugins so we can make it isolated with system.

### 3. ~/.config/vim/config
```
config  
├── colors.vim  
├── diy  
│   ├── code\_runner.vim   
│   ├── comment.vim   
│   ├── indent.vim   
│   └── remember.vim   
├── diy.vim   
├── init.vim  
├── keymaps.vim   
├── plugins  
│   ├── completion.vim   
│   ├── dbui.vim   
│   ├── indentLine.vim   
│   ├── mkdp.vim   
│   ├── nerdtree.vim   
│   └── syntatic.vim   
└── plugins.vim   
```
this is the main part what I wnat to introduce.   
I want to separate the config of vim to five parts, they are: ***color settings, diy functions, init(main file), keymaps and plugins.***
#### 3.1. init.vim  
this is the main file of all configs. It contains import sentences of other modules, and some basic settings.
!!! notice that you can not change the order of import modules randomly! especially the `keymaps.vim` and `plugins.vim`. So I suggest you do not change this file unless you know what you are doing.     

```


#### 3.2. color settings
this part is writen in `colors.vim`, including 'which colorscheme to use', 'other settings to make our code more beautiful' and 'a simple statusline writen in vim', if you have your own opinion, you can change it in `colors.vim` directly.    


#### 3.3. diy functions
this part is writen in `diy.vim`, including 'code runner', 'comment', 'indent', 'remember'. The details of each function are stored in folder `diy\`. If you want to add new function, just create source file in `diy\` and import it in `diy.vim` as I have done.  
Here are the functions of what I have add to `diy.vim`:  

- `code_runner`: run code by simple type `ctrl-b`, you can add more file-type in `code_runner.vim` and change the run way according to your own conditions. Currently support(and eviroment requirements) :    
```json
filetype:env = [ 
    'verilog':['iverilog', 'gtkwave'], 
    'c':'clang', 
    'cpp':'clang++',
    'python':'python3',
    'rust':'cargo',
    'java':'javac',
    'sh':'bash',
    'sql':'mysql' 
]
```

- `comment`: comment code under visual mode by simple type `ctrl-/`, and cancel it by `ctrl-/` too. There is some other options: `ctrl-j` to comment and `ctrl-k` to uncomment. There is only a litte difference between these two ways: the former will add comment at '^' and the latter will add comment at '0'(I assume that you know the meaning of '^' and '0'). For example, if you want to add comment to a cpp snippet: 
```cpp
void bubble_sort(int *a, int n) {
    for (int i = 0; i < n; ++i) 
        for (int j = 0; j < n - i - 1; ++j)
            if (a[j] > a[j + 1])
                std::swap(a[j], a[j + 1]);
}
```
now we select line 2 ~ 5, if we use `ctrl-/`, we will get:  
```cpp
void bubble_sort(int *a, int n) {
    // for (int i = 0; i < n; ++i) 
        // for (int j = 0; j < n - i - 1; ++j)
            // if (a[j] > a[j + 1])
                // std::swap(a[j], a[j + 1]);
}
```
but if you use `ctrl-j`, we will get:  
```cpp
void bubble_sort(int *a, int n) {
    // for (int i = 0; i < n; ++i) 
    //     for (int j = 0; j < n - i - 1; ++j)
    //         if (a[j] > a[j + 1])
    //             std::swap(a[j], a[j + 1]);
}
```
but for uncomment, those two ways are same.  

- `indent`: simple indent style controller, this will atomatically switch the style of indent between '2' and '4' according to filetype.   

- `remember`: remember the line position of cursor.      


#### 3.4. keymaps
self defined keymaps is one of the most charm of vim. It is writen in `keymaps.vim`. And you can add your own keymaps in `keymaps.vim` directly. Here are some default keymaps added by me:   

##### Table 1: Normal Mode
| Shortcut  | Mapped To                                 | Mean (Comment)                                     |
| --------- | ------------------------------------------| -------------------------------------------------- |
| `JK`      | `:q<CR>`                                   | Quit                                               |
| `<C-a>`   | `gg0vG$`                                   | Select all lines                                   |
| `<C-s>`   | `:w<CR>`                                   | Save                                               |
| `<C-j>`   | `<C-W>j`                                   | Jump between windows, move down                    |
| `<C-k>`   | `<C-W>k`                                   | Jump between windows, move up                      |
| `<C-h>`   | `<C-W>h`                                   | Jump between windows, move right                   |
| `<C-l>`   | `<C-W>l`                                   | Jump between windows, move left                    |
| `H`       | `^`                                        | Move to line start                                 |
| `L`       | `$`                                        | Move to line end                                   |
| `U`       | `<C-r>`                                   | Redo                                               |
| `<leader>mm` | `:noh<CR>`                              | Remove highlight                                   |
| `<A-j>`   | `ddp`                                     | Move line down                                     |
| `<A-k>`   | `ddkkp`                                   | Move line up                                       |
| `<leader>h` | `:ter<CR><C-w><C-r><C-\><C-n>:resize -3<CR>i` | Open terminal horizontally                    |
| `<leader>v` | `:set nowrap<CR>:vert ter<CR><C-w><C-r>`  | Open terminal vertically                           |
| `<F3>`    | `:set scrollbind<CR>`                      | Toggle scrollbind                                  |
| `<S-F3>`  | `:set noscrollbind<CR>`                    | Toggle scrollbind off                              |
| `gb`      | `u<C-r>`                                  | Go back to last change                              |
| `<tab>`   | `:bnext<CR>`                              | Next buffer                                        |
| `<s-tab>` | `:bprevious<CR>`                          | Previous buffer                                    |
| `<leader>fo` | `:browse oldfiles<CR>`                   | Open old files                                     |
| `<C-c>`   | `:silent w !clip.exe<CR>`                 | Copy to clipboard                                  |
| `<leader>x` | `:bdelete<CR>`                           | Close buffer                                       |
| `<leader>ff` | `:Files<CR>`                            | Open file manager                                  |
| `<leader>so` | `:w!<CR>:so %<CR>`                       | Reload vimrc                                       |
| `<leader>mp` | `:e ~/.config/vim/config/keymaps.vim<CR>`| Open keymaps.vim                                   |
| `<leader>g` | `:Git`                                    | Trigger git command mode, just input from vim and <CR> |

##### Table 2: Visual Mode
| Shortcut | Mapped To                                     | Mean (Comment)                                      |
| -------- | ---------------------------------------------- | --------------------------------------------------- |
| `q`      | `<Esc>`                                      | Exit visual mode                                    |
| `"`      | `hdi"<Esc>pla"<Esc>l`                         | Wrap selected by `"`                                |
| `'`      | `hdi'<Esc>pla'<Esc>l`                         | Wrap selected by `'`                                |
| `(`      | `hdi(<Esc>pla)<Esc>l`                         | Wrap selected by `()`                               |
| `[`      | `hdi[<Esc>pla]<Esc>l`                         | Wrap selected by `[]`                               |
| `{`      | `hdi{<Esc>pla}<Esc>l`                         | Wrap selected by `{}`                               |
| \`      | `hdi`<Esc>pla`<Esc>l`                         | Wrap selected by `` ` ``                            |
| `<`      | `<gv>`                                       | Move visual block left                              |
| `>`      | `>gv>`                                       | Move visual block right                             |
| `<C-c>`  | `:silent w !clip.exe<CR>`                    | Copy selected to clipboard                          |
| `H`      | `^`                                          | Select to line start                                |
| `L`      | `$`                                          | Select to line end                                  |

##### Table 3: Terminal Mode
| Shortcut   | Mapped To                                   | Mean (Comment)                                        |
| ---------- | -------------------------------------------- | ----------------------------------------------------- |
| `<C-x>`    | `<C-\><C-n>`                               | Exit terminal mode                                   |
| `<leader>q`| `<C-\><C-n>:q!<CR>:set wrap<CR>`            | Close terminal                                       |
| `<C-h>`    | `<C-w>h`                                    | Jump from terminal to normal, jump left               |
| `<C-l>`    | `<C-w>l`                                    | Jump from terminal to normal, jump right              |
| `<C-j>`    | `<C-w>j`                                    | Jump from terminal to normal, jump down               |
| `<C-k>`    | `<C-w>k`                                    | Jump from terminal to normal, jump up                 |

##### Table 4: Other Plugins
| Shortcut | Mapped To                                      | Mean (Comment)                                          |
| -------- | ----------------------------------------------- | ------------------------------------------------------- |
| `<leader>m` | `:MarkdownPreviewToggle<CR>`                 | Open/Close Markdown Preview                             |
| `<C-n>`   | `:NERDTreeToggle<CR>`                        | Open/Close NERDTree                                     |
| `<C-b>`   | `:call CodeRunner()<CR>`                     | Run code_runner                                          |
| `<F4>`    | `:IndentLinesToggle<CR>`                      | Open/Close indent line                                  |

Plugins:  
##### Syntastic Plugin
| Shortcut                 | Mapped To                              | Mode   | Mean                           |
| ------------------------ | ---------------------------------------| ------ | ------------------------------ |
| `<Plug>LocationPrevious` | `:call <SID>LocationPrevious()`        | Normal | Previous error                 |
| `<Plug>LocationNext`     | `:call <SID>LocationNext()`            | Normal | Next error                     |
| `<Leader>ec`             | `:SyntasticToggleMode`                 | Normal | Open/Close Syntastic           |

##### Markdown Preview Plugin
| Shortcut   | Mapped To                       | Mode   | Mean                           |
| ---------- | -------------------------------- | ------ | ------------------------------ |
| `<Leader>m` | `:MarkdownPreviewToggle<CR>`    | Normal | Open/Close Markdown Preview    |

##### NERDTree Plugin
| Shortcut | Mapped To             | Mode   | Mean                           |
| -------- | ----------------------| ------ | ------------------------------ |
| `<C-n>`  | `:NERDTreeToggle<CR>` | Normal | Open/Close NERDTree             |

##### Codium Plugin
| Shortcut | Mapped To            | Mode   | Mean                           |
| -------- | --------------------- | ------ | ------------------------------ |
| `<C-]>`  | `codeium#Accept()`    | Insert | Accept suggestions             |
| `<C-J>`  | `codeium#CycleCompletions(1)` | Insert | Next suggestions          |
| `<C-K>`  | `codeium#CycleCompletions(-1)` | Insert | Previous suggestions     |
| `<C-x>`  | `codeium#Clear()`     | Insert | Clear suggestions              |

##### Code Runner Plugin
| Shortcut | Mapped To               | Mode   | Mean                           |
| -------- | ------------------------| ------ | ------------------------------ |
| `<C-b>`  | `:call CodeRunner()<CR>` | Normal | Run Code Runner                |

##### Other Plugins
| Shortcut | Mapped To                  | Mode   | Mean                           |
| -------- | -------------------------- | ------ | ------------------------------ |
| `<F4>`   | `:IndentLinesToggle<CR>`   | Normal | Open/Close Indent Line         |


#### 3.5. plugins
In this project I have donwload vim-plug as plugin manager and prepare some plugins for you to use. And the config of these plugins are in `~/.config/vim/config/plugins.vim`.  

These are all I want to introduce, let's begain an adventure !!! 😀🚀



