# Zplug used, issues
# * how to fuzzy match?

#setopt VERBOSE
#setopt XTRACE
source ~/.zplug/init.zsh

POWERLEVEL9K_MODE='nerdfont-complete'
source ~/.powerlevel9k-conf


zplug "zsh-users/zsh-completions"

zplug "robbyrussell/oh-my-zsh", as:plugin, use:"lib/*.zsh"


zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/docker",   from:oh-my-zsh
zplug "plugins/docker-compose",   from:oh-my-zsh
zplug "plugins/mvn",   from:oh-my-zsh
zplug "plugins/command-not-found",   from:oh-my-zsh

zplug "zdharma/history-search-multi-word", defer:2
zplug "zdharma/fast-syntax-highlighting", defer:2

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

zplug "StackExchange/blackbox"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load # --verbose

POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{black} $(print_icon 'LEFT_SUBSEGMENT_SEPARATOR') "

export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

export PATH=$HOME/bin:/usr/local/bin:/usr/local/git/bin:/usr/local/hg/bin:$HOME/lib/gsc/bin:$PATH
export MANPATH="/usr/local/man:/usr/local/git/share/man:/usr/local/hg/share/man:$MANPATH"

export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:/home/aschoeneck/.cargo/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/aschoeneck/.sdkman"
[[ -s "/home/aschoeneck/.sdkman/bin/sdkman-init.sh" ]] && source "/home/aschoeneck/.sdkman/bin/sdkman-init.sh"

alias ls='exa'
