# Set editor
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

# Unicode support
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Allow access to git status
autoload -Uz vcs_info

# Change prompt
setopt PROMPT_SUBST
zstyle ':vcs_info:*' actionformats \
	'%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{6}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats \
	'%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{6}%b%F{5}]%f '
precmd () { vcs_info }
PS1='%F{5}[%F{6}%n@%m%F{5}] %F{3}%3~ ${vcs_info_msg_0_}%f%# '

# Save command history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
setopt APPEND_HISTORY

# History from multiple terminals won't mix
setopt NO_SHARE_HISTORY

# Don't save consecutive duplicate commands
setopt HIST_IGNORE_DUPS

# Remove unnecessary spaces in command history
setopt HIST_REDUCE_BLANKS

# Don't beep when unhappy
setopt NO_BEEP

# Try correcting incorrect commands
setopt CORRECT

# Make completions case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Use vim-like keybindings in terminal
bindkey -v

# command for managing dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# Add in local zsh config
if [[ -a ~/.zshrc.local ]]; then
	source ~/.zshrc.local
fi
fpath+=${ZDOTDIR:-~}/.zsh_functions

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/trevor/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
. "/home/trevor/.deno/env"
