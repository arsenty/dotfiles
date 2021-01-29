#eval `/usr/local/bin/keychain --eval id_github`;
eval `ssh-agent -s`; ssh-add $HOME/.ssh/id_github;
cd $HOME/org/;
if [[ `git status --porcelain` ]]; then
    # Changes
    git add . && git commit -m 'sync' & git pull & git push
else
    # No changes
    git pull
fi
