#enable this and use 'zprof' to bench your prompt
#zmodload zsh/zprof
# The default dumped file is ~/.zcompdump which can be changed with compinit -d new_dump_file or totally disabled with compinit -D

#Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/sbin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/home/khan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# POWERLEVEL9K_MODE='nerdfont-complete'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	# zsh-nvm
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-z
    extract
    vscode
    history
)

source $ZSH/oh-my-zsh.sh
# source $ZSH/oh-my-zsh.sh

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

#alias
alias ls='lsd'
alias open='explorer.exe'
alias xx='clear'
#alias sd='sudo'
alias bench='for i in $(seq 1 5); do /usr/bin/time $SHELL -i -c exit; done'
#alias colors='for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done'


#setting

#'ls' and 'cd tab completion' colors
# export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
# zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# #zsh-nvm
# export nvm_lazy_load=true
# export nvm_completion=true

#VCS
	# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
	# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'

	# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
	# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='white'

	# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
	# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='208'

	# POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
	# POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'

	# POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
	# POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

	# POWERLEVEL9K_VCS_COMMIT_ICON='\uf417'
	# POWERLEVEL9K_VCS_GIT_GITHUB_ICON=''
	# POWERLEVEL9K_VCS_BRANCH_ICON='\ue0a0'
	# POWERLEVEL9K_VCS_HIDE_TAGS='false'

#status
	# POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE='true'
	# POWERLEVEL9K_STATUS_VERBOSE='false'

#time
	#POWERLEVEL9K_TIME_BACKGROUND='black'
	#POWERLEVEL9K_TIME_FOREGROUND='white'
	#POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M  \UF133  %m.%d.%y}"
	#HIST_STAMPS="dd/mm/yyyy"
	# POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
	# POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'
	# POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD='0'


#context
	# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'
	# POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='199'

#dir
	# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='blue'
	# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
	# POWERLEVEL9K_SHORTEN_DIR_LENGTH='2'
	# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"

#status
	# POWERLEVEL9K_STATUS_OK_ICON='\uf7d0'
	# POWERLEVEL9K_STATUS_FAIL_ICON='\uf7d3'

#promt
	# POWERLEVEL9K_FOLDER_ICON='\uf07c'
	# POWERLEVEL9K_PROMPT_ADD_NEWLINE='false'
	# POWERLEVEL9K_PROMPT_ON_NEWLINE='false'
	# POWERLEVEL9K_RPROMPT_ON_NEWLINE='false'
	# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
	# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f"
	# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon status ssh root_indicator dir dir_writable vcs)
	# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status ssh root_indicator dir dir_writable vcs)
	# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time)
	# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

#other settings
	# DISABLE_UPDATE_PROMPT='false'
	# DISABLE_AUTO_TITLE='true'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh