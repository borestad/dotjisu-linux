
#!/usr/bin/env zsh
unsetopt nomatch
. $DOTJITSU/packages/shell/.shellrc

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.zsh/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

eval $(dircolors -b $DOTJITSU/packages/dircolors/dircolors.ansi-universal)

# Read aliases
source "$HOME/.aliases"

# # Access private configuration
[[ -a ~/.private/.zshrc ]] && source ~/.private/.zshrc
  

# # fpath=(/usr/local/share/zsh-completions $fpath)
# # fpath=(~/.zsh/completion $fpath)


# # bind hh to Ctrl-r (for Vi mode check doc)
# bindkey -s "\C-r" "\eqhh\n"

# # Autojump
# [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh


# # Fuck
# eval $(thefuck --alias)

# # Automatically list directory contents on `cd`.
# auto-ls () {
#   emulate -L zsh;
#   # explicit sexy ls'ing as aliases arent honored in here.
#   hash gls >/dev/null 2>&1 && CLICOLOR_FORCE=1 gls -aFh --color --group-directories-first || ls
# }
# auto-pkg-scripts () {
#   emulate -L zsh;
#   [ -f "package.json" ] && cs package.json
# }

# #chpwd_functions=( auto-ls auto-pkg-scripts $chpwd_functions )

# # Go to default directory
# # chdir.default

# # Enable syntax highlighting
source "`brew --prefix`/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "`brew --prefix`/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
# #source $HOME/.zsh/zsh-better-npm-completion/zsh-better-npm-completion.plugin.zsh

# # source ~/.fzf

# # Automatically load .envrc files
# # https://github.com/direnv/direnv
# #eval "$(direnv hook zsh)"

files=(
	# options
	# path
	# terminfo
	# completion
	# colors
	# vim
	# prompt
	# plugins
	# locale
	# exports
	# aliases
	# functions
	fzf
	# history
	# bindkeys
	# terminal
	# autopair
	ghq
	#htop
	fasd
	# docker
	# z
)


for file in $files; do
  source "${DOTJITSU}/packages/${file}/${file}.zsh"
done


autoload -Uz compinit && compinit -i

