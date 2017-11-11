# My Neovim configuration


## Installation and setup

To begin, you can use **Homebrew** to install _Neovim_:  ```brew install neovim```  

After, you have to install [vim-plug](https://github.com/junegunn/vim-plug):
- For UNIX:
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
- For Windows:
```powershell
md ~\AppData\Local\nvim\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim\autoload\plug.vim"
)
)
```

If you want to use Python and/or Ruby, you'll have to set them up.

- Python
> On macOS, install pip for Python 2.7.x: ```sudo easy_install-2.7 pip```

```pip install --user neovim``` and ```pip3 install --user neovim```

-  Ruby  
```sudo gem install neovim```

## Configuration

The configuration file for Neovim has to be located at ```~/.config/nvim/init.vim```

You can see mine [here](init.vim).

As it is my first attempt to configure Neovim, I've been very inspired by [Guillaume Quittet _(gquittet)_](https://github.com/gquittet)'s [one](https://github.com/gquittet/myworld/blob/master/Configurations/neovim/init.vim).
