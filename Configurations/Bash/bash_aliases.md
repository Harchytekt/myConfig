# Bash aliases 👥

These are the different aliases that I use:

- **[Finder and folders](#ff)**
- **[Git](#git)**
- **[Programming](#prog)**
- **[Tools](#tools)**

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

<a name="git"></a>
## Git
> Source of inspiration: [Oh My ZSH!](https://github.com/robbyrussell/oh-my-zsh/wiki/Cheatsheet)

### ga
> Alias for ```git add```

### gaa
> Alias for ```git add -A```

### gb
> Alias for ```git branch```

### gbd
> Alias for ```git branch -d```

### gc
> Alias for ```git commit```  

> Remark: It's used to add a summary and a descritpion from the CLI _(e.g. from Neovim)_

### gcb
> Alias for ```git checkout -b```

### gcm
> Alias for ```git commit -m```  

> Remark: To add a summary and a description from the CLI, use:  
```gcm "My summary" -m "First description line" -m "Second description line"```

### gco
> Alias for ```git checkout```

### gd
> Alias for ```git diff```, used if the file isn't staged yet

### gdc
> Alias for ```git diff --cached```, used if the file is already staged

### gi
> Alias for ```git init```

### gl
> Alias for ```git pull```

### glg
> Alias for ```git lg```  

> Not in bash_aliases:  
```bash
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
```

### gm
> Alias for ```git merge --no-ff```

### gp
> Alias for ```git push```

### grao
> Alias for ```git remote add origin```, which adds a remote to the repo.

### grm
> Alias for ```git rm```, which deletes the given files. If they're already deleted, then they're stagged.

### gs
> Alias for ```git status```

### newgithub
> Alias to add readme and gitignore, initialize the repo, link it to a GitHub repo and then commit it all.

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

<a name="tools"></a>
## Tools

### about
> This alias calls the [about script](https://github.com/Harchytekt/about).

### batt
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
