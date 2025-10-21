My personal configuration files inside ~/.config/nvim/

# Setup
-- install latest neovim appimage from github

cd ~/Downloads

chmod u+x nvim.appimage && ./nvim.appimage --appimage-extract

./squashfs-root/AppRun --version

sudo mv squashfs-root /

sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

mkdir ~/.config/nvim

sudo apt update

sudo apt install -y build-essential git curl

curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb

sudo dpkg -i ripgrep_13.0.0_amd64.deb


-- clone this repository 

cd ~/.config/nvim

git clone https://github.com/mariosanr/lazy-nvim-config.git .

-- configure git

-- set user.name and user.email

git config --global core.editor nvim

git config --global alias.st status

git config --global alias.ll 'log --oneline --graph --all --decorate'
