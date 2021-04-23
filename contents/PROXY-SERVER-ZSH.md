# Zshでプロキシに接続

このページではZshでプロキシサーバーに接続する方法をまとめています。

自身の環境がZshであることを確認してから、ページを参照してください。

ZshはmacOS 10.15 Catalina**以降**で利用されていることが多いです。

使い方はコメントを参照してください。

[プロキシ接続スクリプト](https://github.com/i-ta28/kit_dev_settings/blob/main/files/zsh/.proxy.sh)

```zsh
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
```

[プロキシ切断スクリプト](https://github.com/i-ta28/kit_dev_settings/blob/main/files/zsh/.noproxy.sh)

```zsh
#!/bin/zsh
#!/bin/zsh
#This is KIT proxy disconnect script.
#Run this command the first time you use this script.
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
echo "Unset proxy"
```
