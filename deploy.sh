ssh -o StrictHostKeyChecking=no azureuser@20.121.67.185 << EOF

    # Start the SSH agent
    eval "$(ssh-agent -s)"

    # Add SSH deploy key
    ssh-add ~/.ssh/deploy-key

    cd /home/azureuser/swa-actions-course

    git pull --rebase origin master

EOF