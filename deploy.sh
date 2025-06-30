BRANCH=$1

if [ "$BRANCH" == "master" ]; then
    DEPLOY_PATH="/home/azureuser/swa-actions-course"
else
    DEPLOY_PATH="/home/azureuser/staging-server"
fi

ssh -o StrictHostKeyChecking=no azureuser@20.121.67.185 << EOF

    cd $DEPLOY_PATH

    git pull --rebase origin $BRANCH

EOF