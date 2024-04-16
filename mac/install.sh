brew install neovim

cat <<EOF >> ~/.zshrc
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
export EDITOR=/opt/homebrew/bin/nvim # arm
# export EDITOR=/usr/local/bin/nvim # x86
EOF

soruce ~/.zshrc
