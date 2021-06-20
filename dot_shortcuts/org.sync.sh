#!bin/sh
# */1 * * * * sh $HOME/.shortcuts/org.sync.sh >2 $HOME/.shortcuts/org.sync.log
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
eval `keychain --eval id_rsa`;
#eval `ssh-agent -s`; ssh-add $HOME/.ssh/id_github;
cd $HOME/org/;
if [[ -z `git status --porcelain` ]]; then
    # No changes
    git pull
else
    # Changes
    git add . && git commit -m 'sync'
    git pull
    git push
fi
