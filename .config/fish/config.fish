if status is-interactive
    #Starship custom prompt
    command -v starship &>/dev/null && starship init fish | source

    # Direnv + Zoxide
    command -v direnv &>/dev/null && direnv hook fish | source
    command -v zoxide &>/dev/null && zoxide init fish --cmd cd | source

    # Abbrs
    abbr lg lazygit
    abbr gd 'git diff'
    abbr ga 'git add .'
    abbr gc 'git commit -am'
    abbr gl 'git log'
    abbr gs 'git status'
    abbr gst 'git stash'
    abbr gsp 'git stash pop'
    abbr gp 'git push'
    abbr gpl 'git pull'
    abbr gsw 'git switch'
    abbr gsm 'git switch main'
    abbr gb 'git branch'
    abbr gbd 'git branch -d'
    abbr gco 'git checkout'
    abbr gsh 'git show'
end

#gparted 
function gparted
    xhost +si:localuser:root >/dev/null 2>&1
    sudo gparted $argv
    xhost -si:localuser:root >/dev/null 2>&1
end

# Common use
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Get fastest mirrors
alias mirror="sudo cachyos-rate-mirrors"

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

#lazygit-yadm
alias lyadm="lazygit --git-dir=$HOME/.local/share/yadm/repo.git --work-tree=$HOME"

#neovim
alias nv='nvim'

#eza 
alias ls="eza --icons --group-directories-first"

#fastfetch
alias ff="fastfetch"
#btop
alias bt="btop"
#yazi
alias yz="yazi"

#rustc
fish_add_path ~/.cargo/bin

#spicetify
fish_add_path /home/naruebet/.spicetify

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
fish_add_path ~/.bun/bin

# opencode
fish_add_path /home/naruebet/.opencode/bin

# Added by Antigravity CLI installer
set -gx PATH "/home/naruebet/.local/bin" $PATH
