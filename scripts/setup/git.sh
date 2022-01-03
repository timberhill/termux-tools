#!/usr/bin/bash

echo "...Setting up git"
pkg install openssh git

ssh-keygen -t ed25519 -C "m.lisogorskyi@gmail.com"
echo
echo "...Add this key to github account and continue"   
echo "..."
cat .ssh/id_ed25519.pub
echo "..."

git config --global user.email "m.lisogorskyi@gmail.com"
git config --global user.name "Maksym Lisogorskyi"

echo "...done"

