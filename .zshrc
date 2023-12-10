# Load version control system into prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Set git branch details
zstyle ':vcs_info:git:*' formats '%b '

# Set coloring
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# Adds all changed files, commits them and then pushes to remote
# Example usage acp "a commit message"
function acp() {
  git add .
  git commit -m "$1"
  git push
}
