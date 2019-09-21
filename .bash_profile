PATH=/usr/local/share/npm/bin:$PATH

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Update Homebrew itself, upgrade all packages, remove dead symlinks, remove old versions
# of installed formulas, clean old downloads from cache, remove versions of formulas, which
# are downloaded, but not installed, check system for potential problems
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

# Easier navigation
alias ..="cd .."
alias ....="cd ../.."

# Shortcuts
alias p="cd ~/projects"
alias d="cd ~/Desktop"

# Git specific shortcuts
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcm="git checkout master"
alias gcl="git clone"
alias ga="git add"
alias gaa="git add ."
alias gr="git reset"
alias gc="git commit -m"
alias gca="git commit --amend"
alias gp="git push"
alias gpf="git push --force"
alias gpp="git pull --prune"
alias gri="git rebase -i"
alias grm="git rebase master"
alias grv="git remote -v"
alias gst="git status"
alias glog="git log --graph --decorate"
alias gd="git diff"
alias gsp="git stash pop"
alias got="gitup open ."
alias gpsu="git push --set-upstream origin"
alias gitem="git fetch origin; git reset --hard origin/master"

# Configure ls command
export CLICOLOR=1 # Enable ANSI colors sequences to distinguish file types
export LSCOLORS=GxFxCxDxBxegedabagaced # Value of this variable describes what color to use for which file type

# Color definitions (used in prompt)
RED='\[\033[1;31m\]'
GREEN='\[\033[1;32m\]'
YELLOW='\[\033[1;33m\]'
PURPLE='\[\033[1;35m\]'
GRAY='\[\033[1;30m\]'
DEFAULT='\[\033[0m\]'

# Function which prints current Git branch name (used in prompt)
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Configure prompt
PS1="${RED}\u" # Username
PS1+=" ${GRAY}• " # Separator
PS1+="${GREEN}\h" # Hostname
PS1+=" ${GRAY}• " # Separator
PS1+="${YELLOW}\w" # Working directory
PS1+=" ${GRAY}\$([[ -n \$(git branch 2> /dev/null) ]] && echo \"•\") " # Separator (if there is a Git repository)
PS1+="${PURPLE}\$(parse_git_branch)" # Git branch
PS1+="\n" # New line
PS1+="${GRAY}\$ " # Dollar sign
PS1+="${DEFAULT}" # Get back default color

export PS1;