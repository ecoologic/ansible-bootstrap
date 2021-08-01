# lsb_release -a # Ubuntu release or...
# cat /etc/lsb-release
# du -ah dir/ | sort -n -r | head -n 20 # biggest directories
# find dir/ -type f -printf '%s %p\n' | sort -nr | head -10 # biggest directories

# https://stackoverflow.com/questions/7318497/omitting-the-first-line-from-any-linux-command-output
# alias ssh='ssh -o StrictHostKeyChecking=no'

# Read File System
alias agw='ag --width=300'
alias agQ='ag -Q'
alias agc='ag "\<\<\<\<\<\<\< HEAD"'
alias agdeb='ag binding\.pry app/ lib/ vendor/ config/ spec/ && ag debugger app/javascript/ app/assets/javascripts/'
alias dfh='df -h | head'
alias dusch='du -csh' # c total, s 'apparent size', h human
alias egrep='egrep --color=auto'
alias f='find . -iname '
alias grep='grep --color=auto'
alias keep1='awk "{if(NR&gt;1)print}"' # eg: tail x.csv |grep mine |keep1
alias myips='ifconfig |grep "inet.*255"'
alias o='xdg-open'
alias open='xdg-open'
alias openports='lsof -n -i'
alias tree='tree -I "node_modules|tmp|.*"'
alias tailf='tail -f'
alias llp='ls -lrt -d -1 $PWD/*'
alias lo='ls -lrth' # or -halt # ordered by modified
alias ls='ls --color=auto'
alias diff='diff --color'
alias hist='history |tail -n 33'
alias bigfiles="find . -type f -printf '%s %p\n' | sort -nr | head -30"

# Write File System
alias allmine='chown erik:erik -R .'
alias sallmine='sudo chown erik:erik -R .'
alias cpr='cp -r'
alias mkdirp='mkdir -p'
alias s='sudo'
alias say='sudo apt -y'
alias rmf='rm -rf'
alias sideb='sudo dpkg -i' # sudo install deb
replaceDir() { find ./ -type f -exec sed -i "s/$1/$2/g" {} \; ; };
touchp() { mkdir -p $(dirname $1) && touch $1; }

# Git
alias g='git'
alias ga='git add -A'
alias gbr='git symbolic-ref --short -q HEAD'
alias gl1='git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --date=short'
alias glc='git log --oneline |head -n 1'
alias gmm='git fetch && git merge origin/master'
alias gs='git status'
alias gst='git status'
alias gstash='git add . && git add . -u && git stash && git status'
alias gpu='git push origin $(gbr) -u'

# Docker
alias d='docker'
alias dc='docker-compose'
alias dcub='docker-compose up --build'
alias deit='docker exec -it'
alias dls='docker image ls'
alias dps='docker container ps'


# Ruby
alias b='bundle'
alias be='bundle exec'
alias rc='bin/rails c'
alias rf='rspec --only-failures --format documentation'
alias rs='bin/rails s -b 0.0.0.0'
alias rspec='bin/spring rspec'
alias sp='bin/spring'
alias t='tailf log/development.log |grep "Started\|Render\|Process\|Param\|Completed\|AAAA"'


# JS
alias cy='node_modules/.bin/cypress'
alias FAIL='node_modules/jest/bin/jest.js'
alias y='yarn'
alias yt='node_modules/jest/bin/jest.js'


# Misc
alias awsfa='aws-mfa --force --profile urbispro-root'
alias awsmfa='aws-mfa --force --profile urbispro-root'
alias sgxvpn='sudo wg-quick up ~/.ssh/wg-erik.conf'
alias v='vagrant'
alias fixv='VBoxManage dhcpserver remove --netname HostInterfaceNetworking-vboxnet0' # Fix Vagrant complainig about DHCP
alias m8='microk8s'
alias k='kubectl'
function regex1 { gawk 'match($0,/'$1'/, ary) {print ary['${2:-'1'}']}'; }
export ip="$(ifconfig |fgrep wlp --after=1  | regex1 'inet\s([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)')"

echo $ip
