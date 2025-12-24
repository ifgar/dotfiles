# .bashrc

eval "$(starship init bash)"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export TESSDATA_PREFIX="$HOME/tessdata"
alias vobsub2srt-es="vobsub2srt -l spa"

# Flutter
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

# Chromium
export CHROME_EXECUTABLE=/usr/bin/chromium

# Chrome
export CHROME_EXECUTABLE=/usr/bin/google-chrome

# Java OpenJDK 21
export PATH=/usr/lib/jvm/java-21-openjdk/bin:$PATH

