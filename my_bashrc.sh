#!/bin/bash
#=============================================================================
#配置`~/.bashrc`
#=============================================================================
#在`~/.bashrc`中输入如下语句(去掉语句前面的`#`)
#if [ -f ~/my_bashrc.sh ]; then
#    . ~/my_bashrc.sh
#fi
#=============================================================================
#用户自定义开始
#=============================================================================
#-----------------------------------------------------------------------------
#运行应用程序
#-----------------------------------------------------------------------------
#打开edge浏览器
alias edge='/opt/microsoft/msedge/msedge'
#打开QQ
alias qq='/opt/QQ/qq'
#打开微信
alias wechat='wechat'
#打开ktm
alias ktm='~/Gitpro/ktm2/ktm.sh'
#打开vscode
alias code='code'
#打开vim
alias vim='gvim'
#打开python
alias python='python3'
#打开pip
alias pip='pip3'
#-----------------------------------------------------------------------------
#命令重命名
#-----------------------------------------------------------------------------
alias lsf='ls -f'
alias cls='clear'
alias cde='xdg-open .'
alias gitpro='cd ~/Gitpro'
alias bashrc='gvim ~/.bashrc'
alias bashrc_source='source ~/.bashrc'
alias vimrc='gvim ~/.vimrc'
alias ktmrc='gvim ~/Gitpro/ktm2/ktm/config.json'
alias rmrf='rm -rf'
alias ni='touch'
alias pc_close='shutdown -h now'
alias uefi_reboot='sudo systemctl reboot --firmware-setup'
alias vimrc_git_to_sys='~/Gitpro/my_vimrc/vimrc_git_to_sys.sh'
alias vimrc_sys_to_git='~/Gitpro/my_vimrc/vimrc_sys_to_git.sh'
alias bashrc_git_to_sys='~/Gitpro/my_bashrc/bashrc_git_to_sys.sh'
alias bashrc_sys_to_git='~/Gitpro/my_bashrc/bashrc_sys_to_git.sh'
function git_pull_all {
    for dir in */; do
        if [ -d "$dir/.git" ]; then
            echo "Pulling changes in $dir"
            cd "$dir"
            git pull
            cd ..
        else
            echo "$dir does not contain a .git directory, skipping."
        fi
    done
}
#=============================================================================
#用户自定义结束
#=============================================================================
