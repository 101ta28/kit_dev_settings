#!/bin/zsh
#This is KIT proxy connect script.
#Run this command the first time you use this script.
#You can use "proxyon" alias.
#"echo "alias proxyon='source ~/.proxy.sh' >> .zshrc"
#Usage: sh .proxy.sh or alias "proxyon"
#(Tatsuya Imai, Japan)

http_proxy="http://wwwproxy.kanazawa-it.ac.jp:8080/"
https_proxy="http://wwwproxy.kanazawa-it.ac.jp:8080/"
# git settings
git config --global http.proxy http://wwwproxy.kanazawa-it.ac.jp:8080
# npm settings
npm -g config set http-proxy "http://wwwproxy.kanazawa-it.ac.jp:8080/"
npm -g config set https-proxy "http://wwwproxy.kanazawa-it.ac.jp:8080/"
npm -g config set registry "http://registry.npmjs.org/"
echo "Set proxy"
