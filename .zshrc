# https://github.com/bhilburn/powerlevel9k
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt#special-segment-colors
POWERLEVEL9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme
DEFAULT_USER=zhoover
#POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
#POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
#POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='006'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='006'
#POWERLEVEL9K_DIR_HOME_BACKGROUND='006'
POWERLEVEL9K_DIR_HOME_BACKGROUND='white'
#POWERLEVEL9K_COLOR_SCHEME='light'

# User configuration sourced by interactive shells

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
# eval "$(fasd --init auto)"

bindkey -v
bindkey kj vi-cmd-mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

alias vim=nvim
alias vi=nvim
alias mvim=nvim
alias cl=clear
alias fm="vim -c :Vex"
alias la='ls -la'
alias le='lm'
alias b='cd -'
alias dpsa='docker ps -a'
alias dps='docker ps'
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'
alias dockerhealthlogs='docker inspect --format "{{json .State.Health }}"'
alias dhl='dockerhealthlogs'#alias vz='vim $(fzf)'
alias vv='vim $(fzf --height 40% --reverse)'
alias g='rg -p'
alias gi='g -i'
alias gl='g -l'
alias ge='g -F' #this escapes special chars
alias ports='lsof -i' # for specific port lsof -i :3000
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'

export PATH=/Users/zhoover/Library/Python/2.7/bin:$PATH
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --extended'
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!{.git,node_modules}/*"'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# to debug docker container: docker run -it --entrypoint /bin/bash $IMAGE_NAME -s
