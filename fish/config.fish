# ~/.config/fish/config.fish
if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias php='/usr/bin/php7'
alias composer='/usr/bin/php7 /usr/bin/composer'
alias gp="git push"
alias gc="git commit"
alias ga="git add"
alias gs="git status"
export LS_COLORS="$(vivid generate one-light)"

