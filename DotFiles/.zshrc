if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# Theme that is being loaded
ZSH_THEME="powerlevel10k/powerlevel10k"


# case-sensitive completion.
CASE_SENSITIVE="true"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# Plugins that are being loaded 
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting #IMPORTANT: This must be last --> otherwise bugs
)
source $ZSH/oh-my-zsh.sh


# change defaults from plugin zsh-syntax-highlighthing
typeset -A ZSH_HIGHLIGHT_STYLES


# Color of errors
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#d0ceb4'


# Color of paths that exist
ZSH_HIGHLIGHT_STYLES[path]='fg=#746755'


# Color of Separation thins as ; and &&
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#D5BD61'


# Color of globbing expressions
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#333D55'


# Color of Commands
ZSH_HIGHLIGHT_STYLES[command]='fg=#1D2C75'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#1D2C75'
ZSH_HIGHLIGHT_STYLES[function]='fg=#1D2C75'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#1D2C75'


# Color of Commands infront of commands aka sudo
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#D5BD61'


# Color of command words that are not included in the aboth categories 
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#485879'


# This fixes bug where command is printed again in the next line
# infront of the output
export TERM=xterm-256color


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
