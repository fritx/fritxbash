echo 'Warning: Remember to back-up as you need!!'

export USER_HOME=$(node -p 'os.homedir()')

for f in {'.vscode/settings.json',.bash_profile,.bashrc,.bashrc_private,.editorconfig,.gitignore_global}; do
  [ -r $f ] && [ -e $f ] && ln $f "$USER_HOME/$f"
done
unset f
