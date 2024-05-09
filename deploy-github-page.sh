#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e


push_addr=git@github.com:hualess/video.hualess.cn.git # git提交地址，也可以手动设置，比如：push_addr=git@github.com:xugaoyi/vuepress-theme-vdoing.git
commit_info=更新


#清除git信息
rm -rf ./git

git init
git add -A
git commit -m "deploy, $commit_info"
git push -f $push_addr HEAD:$push_branch

#cd -
#rm -rf $dist_path
