export PATH="/usr/local/sbin:$PATH"
export ZPLUG_HOME=/usr/local/opt/zplug

setopt HIST_IGNORE_SPACE

source $ZPLUG_HOME/init.zsh

# Plugins
zplug "agkozak/zsh-z", from:github, depth:1
zplug "plugins/sudo", from:oh-my-zsh, depth:1
zplug "plugins/gpg-agent", from:oh-my-zsh, depth:1
zplug "zsh-users/zsh-autosuggestions", from:github, depth:1
zplug "zsh-users/zsh-syntax-highlighting", from:github, depth:1, defer:2
zplug "lukechilds/zsh-nvm", from:github, depth:1

# Theme
zplug "romkatv/powerlevel10k", from:github, depth:1, as:theme

# Autocompletions
zplug "zsh-users/zsh-completions", from:github, depth:1
zplug "docker/cli", from:github, depth:1, use:contrib/completion/zsh
zplug "docker/compose", from:github, depth:1, use:contrib/completion/zsh

# Prompt to install plugins if not installed
if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo
		zplug install
	fi
fi

# Source plugins and add commands to $PATH
zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Import aliases
source ~/.aliases

if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
fi
