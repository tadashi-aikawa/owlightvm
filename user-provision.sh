#!/bin/bash

# z
echo ". /usr/local/bin/z" >> ~/.bashrc

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

cat >> ~/.bashrc << 'EOF'
# fzfの設定
set FZF_DEFAULT_OPTS="--reverse --border --height 50%"
# fzfのCtrl+T設定 ファイルの中身を表示して200行をプレビュー
set FZF_CTRL_T_OPTS="--preview 'bat --color \"always\" {}' --height 90%"
# fzfのALt+C設定 ツリー表示して200行をプレビュー
set FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200' --height 90%"
EOF

# pureline
git clone https://github.com/tadashi-aikawa/pureline-inspired.git ~/pureline-inspired
chown -R vagrant:vagrant ~/pureline-inspired
echo "source ~/pureline-inspired/pureline ~/pureline-inspired/.pureline.conf" >> ~/.bashrc

# alias
cat >> ~/.bashrc << 'EOF'
alias cdr='cd $(fd -H -t d | fzf)'
alias cdz='cd $(z -l | cut -c 12- | fzf)'
alias cdg='cd $(gowl list | fzf)'
EOF

# ssh
chmod 600 .ssh/id_rsa*

# dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein


cat << 'EOF'
Please manually....

aws configure

vim
call dein#install()
EOF