#!/usr/bin/env bash

# https://stackoverflow.com/questions/18329621/how-to-store-a-git-config-as-part-of-the-repository
# https://raw.githubusercontent.com/tenhobi/dotfiles/7e4376c006c508370b82bc7bd37173fab51dbd01/git/.gitconfig.sh

# Set colors
GREEN='\033[1;32m'
CYAN='\033[1;36m'
NC='\033[0m'

printf "${GREEN}----${NC}"

echo

# Set user email
read -p "Set your email adress: " email
git config --local user.email $email
printf "${CYAN}User email was set.${NC}"

echo
echo

# Set user name
read -p "Set your user name: " name
git config --local user.name "$name"
printf "${CYAN}User name was set.${NC}"

echo
echo

## use .gitconfig instead
## git config core.ignorecase false

# Connect .gitconfig
git config --local include.path '../.gitconfig'
printf "${GREEN}Git config was successfully set.${NC}"
echo
printf "${GREEN}----${NC}"

echo

