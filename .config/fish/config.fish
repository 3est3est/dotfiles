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

    # Custom colours
    #cat ~/.local/state/caelestia/sequences.txt 2>/dev/null

    # For jumping between prompts in foot terminal
    function mark_prompt_start --on-event fish_prompt
        echo -en "\e]133;A\e\\"
    end

    # Custom fish config
    set -q XDG_CONFIG_HOME && set -l cConf $XDG_CONFIG_HOME/caelestia || set -l cConf $HOME/.config/caelestia
    source $cConf/user-config.fish 2>/dev/null
end

#gparted 
function gparted
    xhost +si:localuser:root >/dev/null 2>&1
    sudo gparted $argv
    xhost -si:localuser:root >/dev/null 2>&1
end

#cursor
set -U fish_cursor_default block

#lazygit-yadm
alias lyadm="lazygit --git-dir=$HOME/.local/share/yadm/repo.git --work-tree=$HOME"

#neovim
alias vim='nvim'

#eza 
alias ls="eza --icons --group-directories-first"

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
