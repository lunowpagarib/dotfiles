source /usr/share/cachyos-fish-config/cachyos-config.fish

alias pqs='pacman -Qs'
alias cls='clear'
alias ls='la'
alias zed='zeditor'
alias fastfetch='fastfetch --logo small'
alias cd='z'
alias grable='gradle'

alias ytdlp='yt-dlp --cookies-from-browser firefox:"~/.config/zen/8b5i28vf.Default (release)"'
alias ytm4a='yt-dlp --cookies-from-browser firefox:"~/.config/zen/8b5i28vf.Default (release)" -f 140'
alias gc='git clone'

function zathura
    command zathura-sandbox $argv &
end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

function copy
    set count (count $argv)
    if test "$count" = 2 -a -d "$argv[1]"
        set from (echo $argv[1] | tr -d '/')
        set to $argv[2]
        command scp -r "$from" "$to"
    else
        command scp $argv
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
# lmstudio
fish_add_path "/home/localguru/.lmstudio/bin"

zoxide init fish | source
