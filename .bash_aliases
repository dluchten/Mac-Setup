# Navigation
alias ..='cd ..'
alias t='cd ~/Documents/teaching'
alias r='cd ~/Documents/research'

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'

# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ls='ls -GFh'

# http access through cu
alias cuproxy='ssh -fND 8080 cu'
alias usecuproxy='networksetup -setsocksfirewallproxy "Wi-Fi" localhost 8080'
alias killproxy='networksetup -setsocksfirewallproxystate "Wi-Fi" off'
