
# UPDATING: see: https://github.com/lra/mackup/issues/1384
# run: upgrade_oh_my_zsh

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export CLICOLOR=1

# opensim
export PATH=/Applications/OpenSim\ 4.3/OpenSim\ 4.3.app/Contents/Resources/opensim/bin:$PATH
#export PATH=/Applications/OpenSim\ 4.3/OpenSim\ 4.3.app/Contents/Resources/opensim/sdk/lib:$PATH
#export PATH=/Applications/OpenSim\ 4.3/OpenSim\ 4.3.app/Contents/Resources/opensim/sdk/Simbody/lib:$PATH
#export PATH=/Applications/OpenSim\ 4.3/OpenSim\ 4.3.app/Contents/Resources/opensim/sdk/Python:$PATH
export DYLD_LIBRARY_PATH=/Applications/OpenSim\ 4.3/OpenSim\ 4.3.app/Contents/Resources/opensim/sdk/lib
export DYLD_LIBRARY_PATH=/Applications/OpenSim\ 4.3/OpenSim\ 4.3.app/Contents/Resources/opensim/sdk/Simbody/lib:$DYLD_LIBRARY_PATH
export PYTHONPATH=/Applications/OpenSim\ 4.3/OpenSim\ 4.3.app/Contents/Resources/opensim/sdk/Python:$PYTHONPATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#ZSH_THEME="macovsky"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gnzh"
#ZSH_THEME="philips"

ZSH_THEME="typewritten/typewritten"
TYPEWRITTEN_PROMPT_LAYOUT="pure"
TYPEWRITTEN_SYMBOL="↳"
TYPEWRITTEN_ARROW_SYMBOL="→"
TYPEWRITTEN_DISABLE_RETURN_CODE="true"
TYPEWRITTEN_CURSOR="underscore"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "gnzh" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
#    zsh-shift-select
	git
	fd
	ripgrep
	zsh-autosuggestions
	zsh-syntax-highlighting
	last-working-dir
	brew
	)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="exa -F"
alias ls="exa -F"
alias lT="exa -TF"
alias lTD="exa -DTF -L"
#function lTD {
#  exa -DTF -L$1
#}
alias la="exa -aF"
alias lla="exa -alF -snew --no-user --no-permissions"
alias ll="exa -lF -snew --no-user --no-permissions"
alias llp="exa -lF -snew --no-user"
alias cdicloud="z '/Users/hsai002/Library/Mobile Documents/com~apple~CloudDocs/'"
alias matlab="/Applications/MATLAB_R2021b.app/bin/matlab -nodesktop"
#
function lfp {
  ls -d $(pwd)/$1
}
function rgfl {
    rg -i "$1" -g "*.$2" -l
}
function rgf {
    rg -i "$1" -g "*.$2"
}
function fdf {
    fd $1 -e $2
}
alias zshsrc="source ~/.zshrc"
alias auvpn="sudo openfortivpn connectvpn.auckland.ac.nz:443 --username=hsai002 --pass=Disc0ver. --realm=client"
alias zstart="zeit track --project work --task research"
alias zend="zeit finish"
alias zstats="zeit stats"
alias zlist-all="zeit list"
alias zlist-tday="zlist-all --since $(date +%F)T00:00:00+12:00 --total"
alias zlist-cweek="zlist-all --since $(date -v -Mon +%F)T00:00:00+12:00 --total | grep TOTAL:" 
alias zlist-lweek="zlist-all --since $(date -v-sunday -v-7d +%F)T00:00:00+12:00 --until $(date -v-sunday +%F)T00:00:00+12:00 --total | grep TOTAL:"
alias zlist-cmonth="zlist-all --since $(date +%Y-%m-01)T00:00:00+12:00 --total | grep TOTAL:" 
function zbreak {
  date -v-$1M +%H:%M | xargs -I{} zeit finish -s {}
  zstart 
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export BARTIB_FILE="/Users/hsai002/Documents/Postdoc/1-Planning/Planning/hours.bartib"

# for fzf
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi
if type ag &> /dev/null; then
    export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/hsai002/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hsai002/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/hsai002/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hsai002/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$PATH:/Applications/FEBioStudio/FEBioStudio.app/Contents/MacOS"
export EDITOR="code"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(aliases init --global)"

rga-fzf() {
	RG_PREFIX="rga --files-with-matches"
	local file
	file="$(
		FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
			fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
				--phony -q "$1" \
				--bind "change:reload:$RG_PREFIX {q}" \
				--preview-window="70%:wrap"
	)" &&
	echo "opening $file" &&
	open "$file"
}

alias fzf="fzf --preview bat {}"
export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

# nnn stuff
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_PLUG='p:preview-tui;a:autojump;q:!&ql $nnn;o:!&open $nnn'
n ()
{
    # Block nesting of nnn in subshells
    if [[ "${NNNLVL:-0}" -ge 1 ]]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE='/tmp/.lastd'

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The backslash allows one to alias n to nnn if desired without making an
    # infinitely recursive alias
    \nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}
export NNN_BMS="d:$HOME/Documents;u:$HOME;D:$HOME/Downloads/"
export NNN_ORDER='t:/Users/hsai002/Downloads'
export PAGER="less -R"
alias nnn="n -P p -x -Q -H -d -Tt"
BLK="0B" CHR="0B" DIR="04" EXE="06" REG="00" HARDLINK="06" SYMLINK="06" MISSING="00" ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

# zeit stuff https://github.com/mrusme/zeit
export ZEIT_DB="/Users/hsai002/Documents/Postdoc/1-Planning/Planning/zeit.db"

autoload -Uz compinit && compinit
eval "$(zoxide init zsh)"

bindkey '^[[1;3D' backward-word # alt-left
bindkey '^[[1;3C' forward-word # alt-right
bindkey '^[[1;3A' beginning-of-line # alt-up
bindkey '^[[1;3B' end-of-line # alt-down

alias flex="neofetch --title_fqdn off --package_managers tiny --speed_type max --cpu_brand on --cpu_cores logical --cpu_speed on --refresh_rate on --battery_display bar"