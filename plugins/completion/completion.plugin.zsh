if (( ! $+commands[complete] )); then
	autoload -U +X bashcompinit && bashcompinit
fi

if (( ! $+commands[compinit] )); then
	autoload -Uz +X compinit && compinit
fi

mkdir -p $ZSH_CACHE_DIR/completions
