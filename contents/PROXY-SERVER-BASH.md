# Bashでプロキシに接続

このページではBashでプロキシサーバーに接続する方法をまとめています。

自身の環境がBashであることを確認してから、ページを参照してください。

BashはUbuntuやWSL(Windows Subsystem for Linux)、 macOS 10.15 Catalina**以前**のOSで利用されていることが多いです。

使い方はコメントを参照してください。

[プロキシ接続スクリプト](https://github.com/i-ta28/kit_dev_settings/blob/main/files/bash/.proxy.sh)

```bash
#!/bin/bash
#This is KIT proxy connect script.
#Run this command the first time you use this script.
#You can use "proxyon" alias.
#"echo "alias proxyon='source ~/.proxy.sh' >> .bashrc"
#Usage: sh .proxy.sh or alias "proxyon"
#(Tatsuya Imai, Japan)

export http_proxy="http://wwwproxy.kanazawa-it.ac.jp:8080/"
export https_proxy="http://wwwproxy.kanazawa-it.ac.jp:8080/"
# git settings
git config --global http.proxy http://wwwproxy.kanazawa-it.ac.jp:8080
# npm settings
npm -g config set http-proxy "http://wwwproxy.kanazawa-it.ac.jp:8080/"
npm -g config set https-proxy "http://wwwproxy.kanazawa-it.ac.jp:8080/"
npm -g config set registry "http://registry.npmjs.org/"
echo "Set proxy"
```

[プロキシ切断スクリプト](https://github.com/i-ta28/kit_dev_settings/blob/main/files/bash/.noproxy.sh)

```bash
#!/bin/bash
#This is KIT proxy disconnect script.
#Run this command the first time you use this script.
#You can use "proxyoff" alias.
#"echo "alias proxyoff='source ~/.noproxy.sh' >> .bashrc"
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
