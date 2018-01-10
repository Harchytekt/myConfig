# Bash aliases

These are the different aliases that I use:

- **[Tools](#tools)**
- **[Finder and folders](#ff)**
- **[Programming](#prog)**

<a name="tools"></a>
## Tools

### about
> This alias calls the [about script](https://github.com/Harchytekt/about).

### battery
> This alias calls ```pmset -g batt```, a native command that returns battery status.

Example:

```bash
$ battery
Now drawing from 'AC Power'
 -InternalBattery-0 (id=4522083)    100%; discharging; 8:30 remaining present: true
```

### capture
> It's used to capture webpages with [webkit2png](http://www.paulhammond.org/webkit2png/).

### newPWD
> Generate a complex password. Its length has to be given as parameter.
> It will be saved to the clipboard.

### pubkey
> Gets the RSA public key and saved it to the clipboard.

<a name="ff"></a>
## Finder and folders

## ..
> Alias for ```cd ..```

## ...
> Alias for ```cd ../..```

### cdbrew
> This command is only used to quickly go to the brew folder.

### cp
> Alias for ```cp -v```, which will cause cp to be verbose, showing files as they are copied.

### desk
> Alias for ```cd ~/Desktop```

### doc
> Alias for ```cd ~/Documents```

### finder
> Alias for ```open -a Finder```, which will open the Finder in the current
> folder or in the given folder.

### la
> Alias for ```ls -la```

### lat
> Alias for ```ls -lat```

### ll
> Alias for ```ls -l```

### ls
> Alias for ```ls -G```, which enable colorized output.

### lt
> Alias for ```ls -lt```

### mkdir
> Alias for ```mkdir -p```, which will create intermediate directories as required.

### mv
> Alias for ```mv -v```, which will cause mv to be verbose, showing files after they are moved.

### o
> Alias for ```open```

### oo
> Alias for ```open .```

### rm
> Alias for ```rm -v```, which will be verbose when deleting files, showing them as they are removed.

<a name="prog"></a>
## Programming

### at
> Alias to open Atom from the Terminal.

> When using ```at .```, Atom will be opened in the current folder.

### jv
> Simply compile and run Java programmes.

> Example: ```jv $``` is used to compile all java files from the directory, and runs Main.

### jvc
> Simply compile the given java file.

### mysql
> Uses [mycli](https://www.mycli.net) and login as **root**.

### pip3
> Alias for ```python3 -m pip```

## Git

### git lg (no in bash_aliases)
```bash
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
```
