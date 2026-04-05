source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

alias pqs='pacman -Qs'
alias cls='clear'
alias ls='la'
alias zed='zeditor'
alias fastfetch='fastfetch --logo small'

#brbrbrbrbr bzyabzyabzyabzyabzya
alias edit='fresh'
alias askl="fresh"
alias alks="fresh"
alias aslk="fresh"
alias aksl="fresh"
alias sakl="fresh"
alias ksal="fresh"
alias klas="fresh"
alias ksla="fresh"
alias klsa="fresh"
alias skal="fresh"
alias laks="fresh"
alias akls="fresh"
alias alsk="fresh"
alias kasl="fresh"
alias aksl="fresh"

alias ytdlp='yt-dlp --cookies-from-browser firefox:"/home/localguru/.config/zen/32jqq8j3.Default (release)"'
alias gc='git clone'

function copy
    set count (count $argv)
    if test "$count" = 2 -a -d "$argv[1]"
        set from (echo $argv[1] | tr -d '/')
        set to $argv[2]
        command cp -r "$from" "$to"
    else
        command cp $argv
    end
end

alias pomodoro='isw \
  --intervals 1500,300 \
  --colours 2,1 \
  --shell \'notify-send isw "pomodoro interval complete (cycle %c)"\' \
  --pause \
  --descending \
  --show-cycle'


# uv
fish_add_path "/home/localguru/.local/bin"
# cargo install
fish_add_path "/home/localguru/.cargo/bin"
