#!/bin/zsh
export http_proxy=""
export https_proxy=""
# git settings
git config --global --unset http.proxy
# npm settings
npm -g config delete proxy
npm -g config delete https-proxy
npm -g config delete registry
echo "Unset proxy"