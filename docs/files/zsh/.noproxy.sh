#!/bin/zsh
#This is KIT proxy disconnect script.
#You can use "proxyoff" alias.
#"echo "alias proxyoff='source ~/.noproxy.sh' >> .zshrc"
#Usage: sh .proxy.sh or alias "proxyoff"
#(Tatsuya Imai, Japan)

export http_proxy=""
export https_proxy=""
# git settings
git config --global --unset http.proxy
# npm settings
npm -g config delete http-proxy
npm -g config delete https-proxy
npm -g config delete registry
# yarn settings
yarn config delete proxy
yarn config delete https-proxy
echo "Unset proxy"
