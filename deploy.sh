#!/usr/bin/env sh

# 发生错误时终止
set -e

# 进入构建文件夹
cd dist

cp ../index.html ./

# 放置 .nojekyll 以绕过 Jekyll 的处理。
echo > .nojekyll

# 如果你要部署到自定义域名
echo 'aigc.it' > CNAME

git init
git checkout -B main
git add -A
git config --global user.email "tokenhashio@gmail.com"
git config --global user.name "tokenhash"
git commit -m 'deploy'

git push -f https://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@github.com/tokenhash/aigc.it.git main
cd -
