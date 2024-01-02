
# Dotfiles Repository

This repository contains my dotfiles, configurations for various tools and applications, making it easy to set up and replicate my development environment.

## Included Dotfiles

### Alacritty
- [alacritty.yml](alacritty.yml): Configuration file for the Alacritty terminal emulator.

### Zsh
- [zshrc](zshrc): Zsh configuration file.

### Tmux
- [tmux.conf](tmux.conf): Configuration file for Tmux, a terminal multiplexer.

### Neovim (Nvim)
- [init.vim](init.vim): Configuration file for Neovim, a highly extensible text editor.

## Getting Started

To use these dotfiles on your system, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/dipeshkumarsah98/dotfiles.git
   ```

2. Navigate to the dotfiles directory:
   ```bash
   cd dotfiles
   ```

3. Symlink the dotfiles to your home directory (replace `~` with the full path if needed):
   ```bash
   ln -s $(pwd)/alacritty.yml ~/.alacritty.yml
   ln -s $(pwd)/zshrc ~/.zshrc
   ln -s $(pwd)/tmux.conf ~/.tmux.conf
   ln -s $(pwd)/init.vim ~/.config/nvim/init.vim
   ```

4. Restart or reload the respective applications to apply the changes.

## Contributing

Feel free to fork this repository and customize the dotfiles to suit your preferences. If you find any improvements or have suggestions, open an issue or create a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

