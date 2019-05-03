cd ~

sudo apt install git
sudo apt install g++
sudo apt install clang

wget https://vscode.cdn.azure.cn/stable/51b0b28134d51361cf996d2f0a1c698247aeabd8/code_1.33.1-1554971066_amd64.deb
sudo dpkg -i code_1.33.1-1554971066_amd64.deb
rm code_1.33.1-1554971066_amd64.deb

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt remove firefox
rm google-chrome-stable_current_amd64.deb

sudo apt install zsh
chsh -s /bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
git clone https://github.com/huhaoo/configs.git
cp configs/.zshrc .zshrc

sudo apt install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp configs/.vimrc .vimrc
vim +PluginInstall +qall

wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora

sudo apt install sl
sudo apt install fortune
sudo apt install figlet
sudo apt install toilet
sudo apt install gungo
sudo apt install gnuchess
sudo apt install greed

git clone https://github.com/wszqkzqk/deepin-wine-ubuntu.git qqinstall/
cd qqinstall
chmod +x install.sh
./install.sh
cd ..
wget http://mirrors.aliyun.com/deepin/pool/non-free/d/deepin.com.qq.im/deepin.com.qq.im_8.9.19983deepin23_i386.deb
sudo dpkg -i deepin.com.qq.im_8.9.19983deepin23_i386.deb
rm deepin.com.qq.im_8.9.19983deepin23_i386.deb

sudo apt-get install gnome-tweak-tool
sudo apt-get install gnome-shell-extensions
google-chrome https://www.cnblogs.com/feipeng8848/p/8970556.html
