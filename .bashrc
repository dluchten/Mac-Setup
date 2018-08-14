# Set the PS1 prompt (with colors).
export TERM="xterm-color"
export PS1="\[\e]0;\u@\h: \w\a\]\u@\h:\w\$ "


# colors for ls cmd
export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced


# Set the default editor to emacs.
export EDITOR=emacs

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend

# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
