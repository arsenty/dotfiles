eval `/usr/local/bin/keychain --eval id_github`;
#eval `ssh-agent -s`; ssh-add $HOME/.ssh/id_github;
cd $HOME/Library/Mobile\ Documents/iCloud~com~appsonthemove~beorg/Documents/org/;
if [[ -z `git status --porcelain` ]]; then
    # No changes
    git pull
else
    # Changes
    git add . && git commit -m 'sync'
    git pull
    git push
fi
