echo 'Warning: Remember to back-up as you need!!'

export USER_HOME="/Users/$USER"

for f in {'.vscode/settings.json',.bash_profile,.bashrc,.bashrc_include,.bashrc_private_post,.bashrc_private_pre,.editorconfig,.gitignore_global,.zshrc}; do
  [ -r $f ] && [ -e $f ] && ln $f "$USER_HOME/$f"
done
unset f
