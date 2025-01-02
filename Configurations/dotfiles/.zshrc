#File customizing the profile
if [ -f ~/.zsh_profile ]; then
	. ~/.zsh_profile
fi

if [ -f ~/.zsh_path ]; then
	. ~/.zsh_path
fi

#File containing all the aliases
if [ -f ~/.zsh_aliases ]; then
	. ~/.zsh_aliases
fi

#File customizing the prompt
if [ -f ~/.zsh_prompt ]; then
	. ~/.zsh_prompt
fi

#eval "$(op completion zsh)"; compdef _op op

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
