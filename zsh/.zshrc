eval "$(oh-my-posh init zsh --config '~/.config/config.omp.json')"

# Alias
alias py=python3
alias nv=nvim
alias cls=clear
alias gs='git status'
alias gp='git pull'
alias f='fzf'
alias lg=lazygit
alias gg=lazygit
alias src='source ~/.zshrc'
alias lg='cd $(fd . ~/dev --max-depth 1 --type d | fzf) && lazygit'

#key bindings
bindkey -s "^f" 'cd $(fd . ~/dev --max-depth 1 --type d | fzf) && nvim .^M'


alias work="timer 30m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -sound Crystal && rest"
        
alias rest="timer 5m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -sound Crystal && work"


# Env
export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock
export DOCKER_HOST="unix://${HOME}/.colima/docker.sock"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
