#!/bin/bash
git add ./my_bashrc.sh
git add ./bashrc_git_to_sys.sh
git add ./bashrc_sys_to_git.sh
git add ./git_push.sh
read -p "Input Git Commit Info: " commit_info
git commit -m "$commit_info"
git push
