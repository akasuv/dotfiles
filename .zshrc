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


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/suv/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/suv/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/suv/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/suv/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export PATH="$PATH:/Users/suv/.foundry/bin"
alias dotfiles='/usr/bin/git --git-dir=/Users/suv/.dotfiles/ --work-tree=/Users/suv'
