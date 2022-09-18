# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="ys"
ZSH_THEME="avit"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# operated by fan
alias vi='vim'
alias laravel='/Users/fan/.composer/vendor/bin/laravel'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
alias zk_cli='/usr/local/opt/zookeeper/bin/zkCli'
alias zk_server='/usr/local/opt/zookeeper/bin/zkServer'

alias ofo_work='/Users/fan/Workspace/ofo'
alias jdb_work='/Users/fan/Workspace/jdb'
alias babel_work='/Users/fan/Workspace/babel'
alias cheetah_work='/Users/fan/Workspace/cheetah'
alias ofo='/Users/fan/Documents/ofo'
alias jdb='/Users/fan/Documents/jdb'

alias go_work='/Users/fan/Workspace/go_workspace/src'
alias c_work='/Users/fan/Workspace/c_workspace'
alias lcode='/Users/fan/Workspace/myLeetcode'
alias basic='/Users/fan/Workspace/go_workspace/src/git.joyme.sg/basic'
alias infra='/Users/fan/Workspace/go_workspace/src/git.joyme.sg/liveme_infra'
alias r5='/Users/fan/Workspace/go_workspace/src/git.joyme.sg/liveme_infra/codis/extern/redis-5.0'
alias op='/Users/fan/Workspace/go_workspace/src/git.joyme.sg/liveme_infra/tools'

#alias hp="http_proxy=http://localhost:8123 https_proxy=http://localhost:8123"
#gp=" --config http.proxy=localhost:8123"

#alias test_user='mysql -h 10.6.26.161 -P3307 -uofo_user_w ofo_user -pJ6DNR0obzkY84BkabK55'
#alias test_parter='mysql -h 192.168.4.134 -P7464 -ut_partner_w -A t_partner -pt_partner_w'
#alias test_join='mysql -h 10.6.42.138 -P7513 -uofo_puserjoin_w ofo_puser_join -pofo_puserjoin_w'
#alias test_pay='mysql -h 10.6.42.138 -P7486 -uofo_dpay_w ofo_dpay -pofo_dpay_w'
#alias test_url='mysql -h10.6.42.138 -P4043 -ushorturl_pw ofo_shorturlservice -pshorturl_w'
#alias test_push='mysql -h10.6.26.136 -P3306 -utest -A ofo_eva -ptest'
#alias test_noah='mysql -h 10.6.42.138 -u ofo_wukong_cw -pofo_wukong_cw -P 7381 ofo_wukong'
#alias test_session='mysql -h10.6.42.138 -P7524 -uofo_eva_w -pofo_eva_w'
#alias online_user='mysql -h 192.168.1.199 -P3306 -uofo_user_r ofo -pGtpKYw7qN0SFDmPJ0hLo'
#alias online_parter='mysql -h 192.168.10.226 -P4449 -ut_partner_w t_partner -pTMgHhn5ynqm0KWNJZfFV'
#alias online_join='mysql -h 192.168.10.151 -P4494 -uofo_puserjoin_w ofo_puser_join -pdk4mR90l5kkw3KILCWz2'
#alias online_url='mysql -h192.168.4.233 -P4028 -uofo_short_pw ofo_shorturlservice -p6WrkdSCiKan8jNAox4wj'
#alias online_noah='mysql -h 10.2.20.5 -u newwukong_w -pj5DKQ3RnXEK1ikhBaHfE -P 3307 ofo_new_wukong'
#alias online_push='mysql -h 10.6.43.83 -u ofo_eva_w -pJeWcYnAnUqstwLBFOd3N -P 4472 ofo_eva'

export GOPATH="/Users/fan/Workspace/go_workspace"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"
export LC_ALL=en_US.UTF-8
export HOMEBREW_GITHUB_API_TOKEN=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

ctags=/usr/local/bin/ctags
export PATH="/usr/local/opt/php@7.3/bin:$PATH"
