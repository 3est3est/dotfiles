
# ---------- PATH ----------
export PATH="$HOME/.local/bin:$PATH"
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY SHARE_HISTORY
setopt HIST_IGNORE_DUPS HIST_IGNORE_SPACE HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY

autoload -Uz compinit && compinit -C
setopt AUTO_MENU COMPLETE_IN_WORD
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

setopt CORRECT

unsetopt BEEP LIST_BEEP

export LESS_TERMCAP_md="$(tput bold 2> /dev/null; tput setaf 2 2> /dev/null)"
export LESS_TERMCAP_me="$(tput sgr0 2> /dev/null)"

[[ -f "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] \
  && source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

[[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] \
  && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[[ -f /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh ]] \
  && source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

[[ -f /usr/share/doc/pkgfile/command-not-found.zsh ]] \
  && source /usr/share/doc/pkgfile/command-not-found.zsh

export FZF_BASE=/usr/share/fzf
[[ -f /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh
[[ -f /usr/share/fzf/completion.zsh ]] && source /usr/share/fzf/completion.zsh

alias make="make -j$(nproc)"
alias ninja="ninja -j$(nproc)"
alias n="ninja"

alias cleanup='sudo pacman -Rsn $(pacman -Qtdq)'
alias jctl="journalctl -p 3 -xb"
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

command -v cachyos-rate-mirrors &>/dev/null && alias mirror="sudo cachyos-rate-mirrors"

alias nv='nvim'
alias lyadm="lazygit --git-dir=$HOME/.local/share/yadm/repo.git --work-tree=$HOME"
alias ff="fastfetch"
alias bt="btop"
alias yz="yazi"
alias ls="eza --icons --group-directories-first"

alias lg="lazygit"
alias gd='git diff'
alias ga='git add .'
alias gc='git commit -am'
alias gl='git log'
alias gs='git status'
alias gst='git stash'
alias gsp='git stash pop'
alias gp='git push'
alias gpl='git pull'
alias gsw='git switch'
alias gsm='git switch main'
alias gb='git branch'
alias gbd='git branch -d'
alias gco='git checkout'
alias gsh='git show'

command -v zoxide &>/dev/null && eval "$(zoxide init zsh --cmd cd)"
command -v direnv &>/dev/null && eval "$(direnv hook zsh)"
[[ -d "$HOME/.bun/bin" && ":$PATH:" != *":$HOME/.bun/bin:"* ]] && export PATH="$HOME/.bun/bin:$PATH"
[[ -d "$HOME/.opencode/bin" && ":$PATH:" != *":$HOME/.opencode/bin:"* ]] && export PATH="$HOME/.opencode/bin:$PATH"
[[ -d "$HOME/.spicetify" && ":$PATH:" != *":$HOME/.spicetify:"* ]] && export PATH="$HOME/.spicetify:$PATH"

gparted() {
  xhost +si:localuser:root >/dev/null 2>&1
  sudo gparted "$@"
  xhost -si:localuser:root >/dev/null 2>&1
}
btop() {
  printf "\033]737;size=11\033\\"
  command btop "$@"
  printf "\033]737;reset\033\\"
}

eval "$(starship init zsh)"
