main() {
    ln -s "$(pwd)"/.inputrc     ~/.inputrc
    ln -s "$(pwd)"/.vim         ~/.vim
    ln -s "$(pwd)"/.vimrc       ~/.vimrc
    ln -s "$(pwd)"/.zshrc       ~/.zshrc
    ln -s "$(pwd)"/.ohmyzsh     ~/.ohmyzsh
    ln -s "$(pwd)"/.tmux.conf   ~/.tmux.conf
    chsh -s /bin/zsh
}

main
