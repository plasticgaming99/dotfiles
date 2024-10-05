# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        printf '%s' "${terminfo[smkx]}"
    }
    function zle-line-finish () {
        printf '%s' "${terminfo[rmkx]}"
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

#-- Completion --#
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#-- Do not sound --#
setopt nolistbeep
setopt nolistbeep

#-- Share History --#
setopt inc_append_history
setopt share_history

#-- Make colors available --#
autoload -Uz colors
colors

#-- Pass to the path --#
[[ -d ~/.bin ]] && export PATH="${HOME}/.bin:${PATH}"

#-- misc. --#
setopt AUTO_CD
setopt AUTO_PARAM_KEYS

eval $(thefuck --alias)

export PATH="$HOME/.local/bin:$PATH"
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:"~/.cargo/bin"
