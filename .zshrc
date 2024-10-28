# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Zinit home directory 
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Installing Zinit If not installed
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

# Loading Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add powerlevel10k 
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add other zsh plugins
zinit ice wait lucid
zinit light zsh-users/zsh-syntax-highlighting
zinit ice wait lucid
zinit light zsh-users/zsh-completions
zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions
zinit ice wait lucid
zinit light Aloxaf/fzf-tab

# Keybindings
bindkey -e
bindkey '^[[3~' delete-char
bindkey '^b' backward-word 
bindkey '^w' forward-word
bindkey '^d' delete-word

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling (removing case-sensitivenesss)
zstyle ":completion:*" matcher-list 'm:{a-z}={A-Za-z}'
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ":completion:*" menu no
zstyle ":fzf-tab:complete:cd:*" fzf-preview 'ls --color $realpath'
zstyle ":fzf-tab:complete:__zoxide_z:*" fzf-preview 'ls --color $realpath'


# Load completions
autoload -U compinit && compinit


# Zsh Options
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="%F{blue}...%f"
DISABLE_UNTRACKED_FILES_DIRTY="true"
unsetopt BEEP

# Functions 
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Aliases
alias dndOn="dunstctl set-paused true &&  systemctl disable cronie"
alias dndOff="dunstctl set-paused false && systemctl enable cronie"
alias t="tmux"
alias q="qalc"
alias n="nvim"
alias ta="tmux attach"
alias ping="gping"
alias ncmpcpp="ncmpcpp -p 6200"
alias mpcUpdate="mpc update -p 6200"
alias getMusic="python $HOME/Addons/CustomScripts/getMusic.py"
alias i="sudo pacman -S "
alias iAur="paru -S"
alias s="sudo pacman -Ss "
alias sAur="paru -Ss "
alias up="sudo pacman -Syu"
alias cd="z"
alias cdd="cd"
alias rAudio="systemctl --user restart wireplumber pipewire-pulse pipewire"
alias rInternet="sudo systemctl restart NetworkManager"
alias neofetch="fastfetch"
alias ls="eza -a --icons=always"
alias easyfeh="python ~/easyfeh/easyfeh.py"
alias mann="tldr"
alias gdebug="g++ -pedantic-errors -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion -std=c++23"


# Some Other Variables 
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"


# Shell integrations 
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
