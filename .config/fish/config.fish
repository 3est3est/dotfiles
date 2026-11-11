if status is-interactive
    #Starship custom prompt
    command -v starship &>/dev/null && starship init fish | source

    # Direnv + Zoxide
    command -v direnv &>/dev/null && direnv hook fish | source
    command -v zoxide &>/dev/null && zoxide init fish --cmd cd | source

    # fzf (Ctrl+T files, Ctrl+R history, Alt+C cd)
    if command -q fzf
        set -gx FZF_DEFAULT_OPTS "--height 40% --min-height 20+ --bind=ctrl-z:ignore"
        fzf --fish | source
    end

    # Abbrs
    abbr lg lazygit
end

# Common use
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#lazygit-yadm
alias lyadm="lazygit --git-dir=$HOME/.local/share/yadm/repo.git --work-tree=$HOME"

#neovim
alias nv='nvim'

#eza 
alias ls="eza --icons --group-directories-first"

# clear && fastfetch 
alias cff="clear; and fastfetch"
#fastfetch
alias ff="fastfetch"
#btop
alias bt="btop"
#yazi
alias yz="yazi"

alias make="make -j(nproc)"
alias ninja="ninja -j(nproc)"
alias n="ninja"

# remove orphan packages
alias cleanup="pacman -Qtdq | xargs -r sudo pacman -Rsn"

# Editor + man pager (bat)
set -gx EDITOR nvim
set -gx VISUAL nvim
if command -q bat
    set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
    set -gx MANROFFOPT -c
end

#spicetify
fish_add_path "$HOME/.spicetify"

# bun
set -gx BUN_INSTALL "$HOME/.bun"
fish_add_path "$HOME/.bun/bin"

# Added by Antigravity CLI installer
fish_add_path "$HOME/.local/bin"

# Suppress the Java 25 restricted-native-access warning from Gradle's launcher.
set -gx GRADLE_OPTS --enable-native-access=ALL-UNNAMED
