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
alias edge='microsoft-edge'
#打开QQ
alias qq='/opt/QQ/qq'
#打开微信
alias wechat-linux='/usr/bin/wechat'
alias wechat-wine='/opt/apps/com.qq.weixin.spark/files/run.sh -f %f --no-sandbox'
alias wechat='wechat-wine'
#打开腾讯会议
alias wemeet='/opt/wemeet/wemeetapp.sh %u'
#打开百度网盘
alias baidunetdisk='/opt/baidunetdisk/baidunetdisk --no-sandbox %U'
#打开GBA模拟器(mGBA)
alias gba='mgba-qt'
#打开NDS模拟器(melonDS)
alias nds='~/Downloads/melonDS/build/melonDS'
#打开ktm
alias ktm='~/Gitpro/ktm2/ktm.sh'
#打开python
alias python='python3'
#打开pip
alias pip='pip3'
#打开设置中心
alias setting='gnome-control-center'
#打开开机应用设置界面
alias start_up='gnome-session-properties'
#打开ygodc
alias ygodc='~/Gitpro/ygodc/ygodc'
#打开tokenizer
alias tokenizer='~/Gitpro/tokenizer/tokenizer'
#打开shotcut
alias shotcut_apt='/usr/bin/shotcut'
alias shotcut_snap='/snap/bin/shotcut'
#为什么使用老版本的apt shotcut?
#新版本shotcut预览视频素材容易直接闪退卡住整个操作系统
alias shotcut='shotcut_apt'
#打开fgwsz-package
alias fgwsz_package='~/Gitpro/fgwsz-package/fgwsz-package'
#-----------------------------------------------------------------------------
#命令重命名
#-----------------------------------------------------------------------------
alias lsf='ls -f'
alias cls='clear'
alias cde='xdg-open .'
alias gitpro='cd ~/Gitpro'
alias start_menu='cd /usr/share/applications'
alias bashrc='gvim ~/my_bashrc.sh'
alias bashrc_source='source ~/.bashrc'
alias vimrc='gvim ~/.vimrc'
alias ktmrc='gvim ~/Gitpro/ktm2/ktm/config.json'
alias rmrf='rm -rf'
alias ni='touch'
alias ibus_reboot='ibus-daemon -r -d -x'
#压缩/解压相关
alias targz='tar -czvf'
alias targz_x='tar -xzvf' #-C
alias zip='zip -r'
alias zip_x='unzip' #-d
alias 7zmax='7z a -mx=9'
alias 7z_x='7z x' #-o
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
