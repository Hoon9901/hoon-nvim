mv ~/.config/nvim ~/.config/nvim.bak &&
	mv ~/.local/share/nvim ~/.local/share/nvim.bak

git clone https://github.com/LazyVim/starter ~/.config/nvim &&
	rm -rf ~/.config/nvim/.git

echo "LazyVim Install Done"

nvim
