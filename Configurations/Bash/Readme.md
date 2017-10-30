# My Bash configuration

## Personnalized bash files

These four bash files personnalizes my Terminal use on macOS.  
These files are:  

- **[bash_aliases](#aliases)**
- **[bash_path](#path)**
- **[bash_profile](#profile)**
- **[bash_prompt](#prompt)**    

<a name="aliases"></a>
### bash_aliases
> This file contains all the aliases I currently use.  
> 
> You can find the [about script on my GitHub](https://github.com/Harchytekt/about).  
> For example, I use '_mkdir -p_' as **mkdir** to create intermediate directories when required.
> I also made two function to quickly compile and run Java programmes through **jv $** (the only need is to have the _main_ method inside a _Main_ class).

<a name="path"></a>
### bash_path
> This file is the simplest for now.  
> 
> It only contains:  
> 
> - the path to use SQL with MAMP;
> - the path to use the [Go programming language](https://golang.org).

<a name="profile"></a>
### bash_profile
> This one is the main file: it makes the link to the others.
> 
> It's automatically read by macOS and tells it that the **bash_aliases**, **bash_path** and **bash_prompt** exist. It also tells to the system where to search the files for the bash completion.  
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
> 	- when in a git repo, you'll now if you are on the master branch or on another;
> 	- when accessed through SSH, the colors will be changed.
