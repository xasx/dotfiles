set -g theme_nerd_fonts yes
set -g theme_color_scheme terminal2-light-black
set -g theme_date_format "+%a,%d.%b %T"
set -g theme_display_vi no
set -g theme_display_user ssh
set -g theme_title_display_process yes

eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
thefuck --alias | source
