#!/bin/bash

# .gitconfig Download
curl -o /tmp/.gitconfig https://raw.githubusercontent.com/leoppark94/gitconfig/main/.gitconfig
mv /tmp/.gitconfig ~/.gitconfig

# Enter Username and Email
echo "Enter your Git UserName:"
read git_user_name
echo "Enter yoru Git Email:"
read git_user_email

chmod 600 ~/.gitconfig

# add user information
git config --global user.name "$git_user_name"
git config --global user.email "$git_user_email"

echo ".gitconfig file applied"
echo "************************************"
echo "Current Git Setting: "
echo "************************************"
git config --list --show-origin
