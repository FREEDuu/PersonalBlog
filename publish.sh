#!/bin/bash

rsync -av --delete "/home/francesco/Documents/Obsidian Vault/static" "/home/francesco/Desktop/PersonalBlog/"

echo "copy images"

rsync -av --delete "/home/francesco/Documents/Obsidian Vault/posts" "/home/francesco/Desktop/PersonalBlog/content"

echo "copy posts"

echo "Connecting to GH via ssh"

hugo

ssh -T git@github.com

echo "push changes into PersonalBlog.git repo"

git add .
git commit -m "new blog post :D"
git push

echo "everything fine and up to date"