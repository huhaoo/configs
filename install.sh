cd ~
sudo apt update
sudo apt install git
git clone https://github.com/huhaoo/configs.git
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp configs/source.list /etc/apt/sources.list
sudo apt update
sudo apt install g++
sudo apt install filezilla
sudo apt install gcc
sudo apt install qt5-default
sudo apt install make
sudo apt install clang
sudo apt install zsh
sudo apt install vim
sudo apt install sl
sudo apt install figlet
sudo apt install toilet
sudo apt install vim-gnome
sudo apt install kolourpaint4
sudo apt install python
sudo apt install typora

cd ~
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

cd ~
chsh -s /bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
cp configs/.zshrc .zshrc

cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp configs/.vimrc .vimrc
vim +PluginInstall +qall

cd ~
git clone https://github.com/Dust1404/Project_LemonPlus.git
mv Project_LemonPlus lemon
cd lemon
gcc watcher_unix.c -o watcher_unix -O2
gcc realjudge.c -o realjudge_linux -O2
qmake lemon.pro
make
cd ~
touch ~/.local/share/applications/lemon.desktop
chmod 777 ~/.local/share/applications/lemon.desktop
echo>>~/.local/share/applications/lemon.desktop "[Desktop Entry]"
echo>>~/.local/share/applications/lemon.desktop "Type=Application"
echo>>~/.local/share/applications/lemon.desktop "Terminal=false"
echo>>~/.local/share/applications/lemon.desktop "Exec=/home/$USER/lemon/lemon"
echo>>~/.local/share/applications/lemon.desktop "Name=lemon"
echo>>~/.local/share/applications/lemon.desktop "Comment=lemon"
echo>>~/.local/share/applications/lemon.desktop "Icon=/home/$USER/lemon/icon.ico"

cd ~
sudo apt install npm
sudo npm install hexo-cli -g

cd ~
clear
toilet -f mono9 Let\'s
toilet -f mono9 celebrate
toilet -f mono9 that
toilet -f mono9 --gay LK ak IOI!
