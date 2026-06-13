# Script to pull my dotfiles into this repository.
# Overwrites any existing dotfiles here.
# Any apps/utils must be added manually to this script

# tput things for styling
bold=$(tput bold)
normal=$(tput sgr0)
ul=$(tput smul)
rul=$(tput rmul)


echo ""
echo "╔══════════════════════════════════╗"
echo "║     notgian ●📄s pull script     ║"
echo "╚══════════════════════════════════╝"
echo ""


echo "${bold}Pulling ${ul}neovim${rul} dotfiles into repository...${normal}"
if [[ -e "$HOME/.config/nvim" ]]; then
    if [[ -e "$PWD/nvim" ]]; then
        echo "▷ removing local nvim directory..."
        rm -r "$PWD/nvim"
    fi;
    echo "▷ copying dotfiles..."
    cp -r "$HOME/.config/nvim" "$PWD/"
    echo "▷ neovim dotfiles successfully pulled! ✔"
else
    echo "▷ ts don't exist brother... ❌"
fi;
echo ""


echo "${bold}Pulling ${ul}tmux${rul} dotfiles into repository...${normal}"
if [[ -e "$HOME/.tmux.conf" ]]; then
    if [[ -e "$PWD/tmux" ]]; then
        echo "▷ removing local tmux directory..."
        rm -r "$PWD/tmux"
    fi;
    echo "▷ copying dotfiles..."
    mkdir "tmux"
    cp "$HOME/.tmux.conf" "$PWD/tmux/"
    echo "▷ tmux dotfiles successfully pulled! ✔"
else
    echo "▷ ts don't exist brother... ❌"
fi;
echo ""


echo "${bold}Pulling ${ul}zsh${rul} dotfiles into repository...${normal}"
if [[ -e "$HOME/.zshrc" ]]; then
    if [[ -e "$PWD/zsh" ]]; then
        echo "▷ removing local zsh directory..."
        rm -r "$PWD/zsh"
    fi;
    echo "▷ copying dotfiles..."
    mkdir "zsh"
    cp "$HOME/.zshrc" "$PWD/zsh/"
    echo "▷ zsh dotfiles successfully pulled! ✔"
else
    echo "▷ ts don't exist brother... ❌"
fi;
echo ""


echo "${bold}Pulling ${ul}fuzzel${rul} dotfiles into repository...${normal}"
if [[ -e "$HOME/.config/fuzzel" ]]; then
    if [[ -e "$PWD/fuzzel" ]]; then
        echo "▷ removing local fuzzel directory..."
        rm -r "$PWD/fuzzel"
    fi;
    echo "▷ copying dotfiles..."
    cp -r "$HOME/.config/fuzzel" "$PWD/"
    echo "▷ fuzzel dotfiles successfully pulled! ✔"
else
    echo "▷ ts don't exist brother... ❌"
fi;
echo ""


echo "${bold}Pulling ${ul}kitty${rul} dotfiles into repository...${normal}"
if [[ -e "$HOME/.config/kitty" ]]; then
    if [[ -e "$PWD/kitty" ]]; then
        echo "▷ removing local kitty directory..."
        rm -r "$PWD/kitty"
    fi;
    echo "▷ copying dotfiles..."
    cp -r "$HOME/.config/kitty" "$PWD/"
    echo "▷ kitty dotfiles successfully pulled! ✔"
else
    echo "▷ ts don't exist brother... ❌"
fi;
echo ""


echo "${bold}Pulling ${ul}noctalia${rul} dotfiles into repository...${normal}"
if [[ -e "$HOME/.config/noctalia" ]]; then
    if [[ -e "$PWD/noctalia" ]]; then
        echo "▷ removing local noctalia directory..."
        rm -r "$PWD/noctalia"
    fi;
    echo "▷ copying dotfiles..."
    cp -r "$HOME/.config/noctalia" "$PWD/"
    echo "▷ noctalia dotfiles successfully pulled! ✔"
else
    echo "▷ ts don't exist brother... ❌"
fi;
echo ""


echo "${bold}Pulling ${ul}hyprland${rul} dotfiles into repository...${normal}"
if [[ -e "$HOME/.config/hypr" ]]; then
    if [[ -e "$PWD/hypr" ]]; then
        echo "▷ removing local hypr directory..."
        rm -r "$PWD/hypr"
    fi;
    echo "▷ copying dotfiles..."
    cp -r "$HOME/.config/hypr" "$PWD/"
    echo "▷ hyprland dotfiles successfully pulled! ✔"
else
    echo "▷ ts don't exist brother... ❌"
fi;
echo ""
