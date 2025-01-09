#!/bin/bash

rsync -av --delete "/home/francesco/Documents/Obsidian Vault/static" "/home/francesco/Desktop/PersonalBlog/"

echo "copy images"

rsync -av --delete "/home/francesco/Documents/Obsidian Vault/posts" "/home/francesco/Desktop/PersonalBlog/static"

echo "copy posts"

echo "Connecting to GH via ssh"

ssh -T git@github.com

echo "push changes into PersonalBlog.git repo"

git add .
git commit -m "Create hugo.yaml"
git push

echo "everything fine and up to date"