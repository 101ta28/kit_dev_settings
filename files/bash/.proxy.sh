#!/bin/bash
export http_proxy="http://wwwproxy.kanazawa-it.ac.jp:8080/"
export https_proxy="http://wwwproxy.kanazawa-it.ac.jp:8080/"
# git settings
git config --global http.proxy http://wwwproxy.kanazawa-it.ac.jp:8080
# npm settings
npm -g config set proxy "http://wwwproxy.kanazawa-it.ac.jp:8080/"
npm -g config set https-proxy "http://wwwproxy.kanazawa-it.ac.jp:8080/"
npm -g config set registry "http://registry.npmjs.org/"
echo "Set proxy"