###
# Install oh my zsh
###
printf "\n🚀 Installing oh-my-zsh\n"
if [ -d "${HOME}/.oh-my-zsh" ]; then
  printf "oh-my-zsh is already installed\n"
else
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

###
# Installing dotfiles
###

# Assuming ~/.dotfiles
if [ -d "$HOME/.dotfiles" ]; then
  DOTFILES_DIR="$HOME/.dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi

# Install links
ln -fs ${DOTFILES_DIR}/runcom/.zprofile ${HOME}/.zprofile
ln -fs ${HOME}/.zprofile ${HOME}/.zshrc
