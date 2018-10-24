source ~/.git-prompt.sh

# Color mapping
grey='\033[1;30m'
red='\033[0;31m'
RED='\033[1;31m'
green='\033[0;32m'
LIGHTGREEN='\033[1;32m'
yellow='\033[0;33m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
purple='\033[0;35m'
PURPLE='\033[1;35m'
white='\033[0;37m'
WHITE='\033[1;37m'
blue='\033[0;34m'
BLUE='\033[1;34m'
cyan='\033[0;36m'
CYAN='\033[1;36m'
NC='\033[0m'

# use PROMPT_COMMAND instead of setting PS1 to get better performance and color hinting
#PS1='\u@\h \w $(__git_ps1 "($yellow%s$NC)")\$ '
#PS1="$yellow[$CYAN\t$yellow][$red\H$yellow][$GREEN\w$grey$yellow]$NC# "

GIT_PS1_SHOWCOLORHINTS=true
PROMPT_COMMAND='__git_ps1 "$YELLOW\u@\h:$cyan\w$NC" "\\\$ "'

export LSCOLORS=Gxfxcxdxbxegedabagacad
export VISUAL=vim
export EDITOR="$VISUAL"
export DEV_ENV_SSH_KEY=~/.ssh/sapling.key
export LIVE_ENV_SSH_KEY=~/.ssh/sapling.key
export LEGION_SSH_KEY=~/.ssh/sapling.key
export WORKSPACE="/Users/zhoover/dev/"
export AWS_ACCOUNT_ID=999447569257
export TERM="xterm-256color-italic"
# export AWS_ACCESS_KEY=`cat $WORKSPACE/awsutil/aws_keys/dev/readonly_access`
# export AWS_SECRET_KEY=`cat ~/dev/awsutil/aws_keys/dev/readonly_secret`
# alias sshtag=~/dev/awsutil/sshtag.sh
# function tiger() {
#   export IP=$(aws ec2 describe-instances --filters "{\"Name\":\"tag:Name\", \"Values\":[\"psv-tiger-$1\"]}" --query='Reservations[0].Instances[0].PrivateIpAddress' | tr -d '"');
# echo "Trying to connect to $IP";
# ssh -A ec2-user@$IP
# }
# function integreat() {
#   export IP=$(aws ec2 describe-instances --filters "{\"Name\":\"tag:Name\", \"Values\":[\"psv-integration-$1\"]}" --query='Reservations[0].Instances[0].PrivateIpAddress' | tr -d '"');
# echo "Trying to connect to $IP";
# ssh -A ec2-user@$IP
# }
eval "$(fasd --init auto)"
alias fm="vim -c :Vex"
alias la="ls -laG"
alias v='f -e mvim' # quick opening files with mvim
alias vim='/usr/local/bin/nvim'
alias psqlint='PAGER="less -S" PGPASSWORD="D7AK6TTlvv7tMa1" psql -h pd49i2j76anw7d.cuhuctv9amqn.us-east-1.rds.amazonaws.com -U pf_master pathfinder'
alias psqldev='PAGER="less -S" PGPASSWORD="D7AK6TTlvv7tMa1" psql -h pd17vzw26tugm6b.cuhuctv9amqn.us-east-1.rds.amazonaws.com -U pf_master pathfinder'
alias psqlprod='PAGER="less -S" PGPASSWORD="gNUdDmV9KKzo3rkAyZ2]" psql -h pdvd4n2co8fw9.c0qpkicozoiz.us-east-1.rds.amazonaws.com -U pf_master pathfinder'
alias psqluat='PAGER="less -S" PGPASSWORD="D7AK6TTlvv7tMa1" psql -h pd1cqsqk1z69ti0.cuhuctv9amqn.us-east-1.rds.amazonaws.com -U pf_master pathfinder'
alias psqldemo='PAGER="less -S" PGPASSWORD="D7AK6TTlvv7tMa1" psql -h pd9l70v3mt39p8.cuhuctv9amqn.us-east-1.rds.amazonaws.com -U pf_master pathfinder'
alias npmlinks='find / -type d -name "node_modules" 2>/dev/null | xargs -I{} find {} -type l -maxdepth 1 | xargs ls -l'
alias ports='lsof -i' # for specific port lsof -i :3000
# export NVM_DIR="/Users/zhoover/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# use vi mode in bash
set -o vi
# bind esc to 'kj' in bash
bind '"kj":vi-movement-mode'
