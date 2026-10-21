
# ---------- PATH ----------
export PATH="$HOME/.local/bin:$PATH"
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

export EDITOR="nvim"
export VISUAL="nvim"
command -v bat &>/dev/null && export MANPAGER="sh -c 'col -bx | bat -l man -p'" MANROFFOPT="-c"

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

# ---------- ZSH PLUGINS ----------
# autosuggestions: Fish-like grey suggestion
[[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]] \
  && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# history-substring-search: Up/Down filters by typed prefix
[[ -f /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh ]] \
  && source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
# bind only when plugin actually loaded, otherwise keep default history search
if (( $+functions[history-substring-search-up] )); then
  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down
  bindkey -M emacs '^P' history-substring-search-up
  bindkey -M emacs '^N' history-substring-search-down
fi

[[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] \
  && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pkgfile command-not-found handler 
[[ -f /usr/share/doc/pkgfile/command-not-found.zsh ]] \
  && source /usr/share/doc/pkgfile/command-not-found.zsh

# fzf keybindings + completion (Ctrl+R history, Ctrl+T files, Alt+C cd)
if [[ -d /usr/share/fzf ]]; then
  [[ -f /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh
  [[ -f /usr/share/fzf/completion.zsh ]] && source /usr/share/fzf/completion.zsh
fi

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

alias nv='nvim'
alias lyadm="lazygit --git-dir=$HOME/.local/share/yadm/repo.git --work-tree=$HOME"
alias cff="clear &&  fastfetch"
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

eval "$(starship init zsh)"

# Added by Antigravity CLI installer
export PATH="/home/naruebet/.local/bin:$PATH"
