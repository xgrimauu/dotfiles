
# Eval "$(oh-my-posh init zsh --config '~/.config/config.omp.json')"

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
alias g='./gradlew'

#key bindings
bindkey -s "^f" 'cd $(fd . ~/dev --max-depth 1 --type d | fzf) && clear^M'
bindkey -s "^n" 'cd $(fd . ~/dev --max-depth 1 --type d | fzf) && nvim .^M'

# Env
export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock
export DOCKER_HOST='unix:///home/xavi/.local/share/containers/podman/machine/qemu/podman.sock'
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/$USER/bin
export PATH=$PATH:/home/$USER/.local/bin
#  export PATH=$PATH:~/.local/kitty.app/bin

source ~/.zshrc.omp.config

export EDITOR='nvim'
# Aliases

alias cls=clear
alias src='source ~/.zshrc'
alias acm='git add . && git commit -m $(echo "Write ONLY the commit message in a single line without quotes or explanations. Branch: %s\nChanges:\n%s" "$(git branch --show-current)" "$(git diff HEAD)" | ollama run llama3.2)'



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# bun completions
[ -s "/home/xavi/.bun/_bun" ] && source "/home/xavi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
