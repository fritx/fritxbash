echo 'Warning: Remember to back-up as you need!!'

for f in {'.vscode/settings.json',.bash_profile,.bashrc,.bashrc_include,.bashrc_custom,.bashrc_private_post,.bashrc_private_pre,.editorconfig,.gitignore_global,.zshrc}; do
  [ -r $f ] && [ -e $f ] && ln -s "$FRITXBASH_PATH/$f" "$HOME/$f"
done
unset f
