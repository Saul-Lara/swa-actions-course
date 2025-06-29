ssh -o StrictHostKeyChecking=no azureuser@20.121.67.185 << EOF

    cd /home/azureuser/swa-actions-course

    git pull --rebase origin master

EOF