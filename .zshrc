# Initialization Code goes above(which requires inputs), else below....
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Zsh Theme
ZSH_THEME="robbyrussell"


#Zsh Updates
zstyle ':omz:update' frequency 5

#Path
path+=('/home/shibam/.cargo/bin')

# Zsh Options
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="%F{blue}...%f"
DISABLE_UNTRACKED_FILES_DIRTY="true"
unsetopt BEEP


# Plugins
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh



#Important options
export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
fi


# Terminal Startup Commands
pokemon-colorscripts -r --no-title

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
alias dndOn="dunstctl set-paused true"
alias dndOff="dunstctl set-paused false"
alias t="tmux"
alias ta="tmux attach"
alias ping="gping"
alias ncmpcpp="ncmpcpp -p 6200"
alias ncmpcppGay="ncmpcpp | lolcat"
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
# Theme and Zoxide
source ~/powerlevel10k/powerlevel10k.zsh-theme
eval "$(zoxide init zsh)"


# Python virtual env

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/shibam/Addons/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

