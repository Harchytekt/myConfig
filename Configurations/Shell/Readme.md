# My Shell configuration

## My git file

This file _([gitconfig](gitconfig))_ contains my config.  

I use _remote shortcuts_.  
I can clone with ```git clone github:myrepo``` thanks to:
```
[url "git@github.com:Harchytekt/"]
    insteadOf = github:
```

## Personnalized shell files

These six shell files personnalizes my Terminal use on macOS.  
These files are:  

- **[sh_aliases](#aliases)**
- **[sh_path](#path)**
- **[bash_profile and zshrc](#profile)**
- **[bash_prompt and zsh_prompt](#prompt)**

<a name="aliases"></a>
### sh_aliases- [(more explanations)](sh_aliases.md)
> This file contains all the aliases I currently use.  
>
> You can find the [about script on my GitHub](https://github.com/Harchytekt/about).  
> For example, I use '_mkdir -p_' as **mkdir** to create intermediate directories when required.
> I also made two function to quickly compile and run Java programmes through **jv $** (the only need is to have the _main_ method inside a _Main_ class).

<a name="path"></a>
### sh_path
> This file is the simplest for now.  
>
> It only contains:  
>
> - the path to use SQL with MAMP;
> - the path to use the [Go programming language](https://golang.org).

<a name="profile"></a>
### bash_profile _(or bashrc)_
> This one is the main file: it makes the link to the others.
>
> It's automatically read by macOS and tells it that the **sh_aliases**, **sh_path** and **bash_prompt** exist. It also tells to the system where to search the files for the bash completion.  
>
> Without these links, the file would contain all the lines from the three others (→ loss of readability 😠).

<a name="prompt"></a>
### bash_prompt
> This file is heavily inspired by [@necolas’s prompt](https://github.com/necolas/dotfiles)
>
> It personnalizes the prompt:  
>
> - it's format;
> - it's colors;
> - it's behaviour:  
> 	- when in a git repo, you'll now if you are on the master branch or on another *(not in zsh)*;
> 	- when accessed through SSH, the colors will be changed.
