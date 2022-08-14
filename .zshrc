alias fs='nvim'
alias python='python3'
alias pip='pip3'

TERM=xterm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

#export http_proxy=http://127.0.0.1:1087
#export https_proxy=https://127.0.0.1:1087

export PATH="$PATH:/Users/suv/.foundry/bin"
alias dotfiles='/usr/bin/git --git-dir=/Users/suv/.dotfiles/ --work-tree=/Users/suv'
