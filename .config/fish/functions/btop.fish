function btop --description 'alias btop=kitty -o font_size=11 btop'
    printf "\033]737;size=11\033\\"
    command btop $argv
    printf "\033]737;reset\033\\"
end
