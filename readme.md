## 请仔细看下方说明，有BUG提出issue（目前只接受18.04）

下载我的linux配置

```sh
wget https://raw.githubusercontent.com/huhaoo/configs/master/install.sh
chmod +x install.sh
./install.sh
```

如果`apt install`出现错误，使用`sudo apt --fix-broken install`然后重试

如果（应该会）中途进入zsh，请手工输入`exit`

所有询问输入`Y`或其它**肯定**选项

`vim`由于禁止备份，请将所有`:w`改为`:w!`

安装完后（即出现某彩蛋后）重启
