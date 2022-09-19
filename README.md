# My Dotfiles

reference: https://www.atlassian.com/git/tutorials/dotfiles

##Installing

1. `echo "alias dtf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc`
2. `echo ".dotfiles" >> .gitignore`
3. `git clone --bare https://github.com/akasuv/dotfiles $HOME/.dotfiles`
4. `alias dtf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
5. ```
   dtf checkout

   --- Possible Errors ---
   error: The following untracked working tree files would be overwritten by checkout:
   .bashrc
   .gitignore
   Please move or remove them before you can switch branches.
   Aborting

   --- Solution ---

   mkdir -p .config-backup && \
   dtf checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
   xargs -I{} mv {} .config-backup/{}

   --- Re-Run ---
   dtf checkout
   ```

6. `dtf config --local status.showUntrackedFiles no`
