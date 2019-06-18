export PS1="\[\033[38;5;2m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\    [\033[38;5;15m\]:\w\\$\[$(tput sgr0)\] "
 
alias l='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i" # confirm before overwriting something        
