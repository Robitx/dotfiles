autoload -U promptinit; promptinit

PURE_GIT_PULL=1
PURE_GIT_UNTRACKED_DIRTY=1
PURE_PROMPT_SYMBOL='➜'
PURE_GIT_DOWN_ARROW='↓'
PURE_GIT_UP_ARROW='↑'
RPROMPT='%F{white}%*'

# remove color-inverter % when output doesn't include trailing newline
unsetopt PROMPT_CR PROMPT_SP
setopt INTERACTIVECOMMENTS

# https://github.com/zdharma/fast-syntax-highlighting/issues/135
export FAST_HIGHLIGHT[whatis_chroma_type]=0
