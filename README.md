**Todo**

- [x] user prompts
- [x] vps.bash_firstsetup
- [x] vps.bashrc (in private repos)
- [x] gspp & continuous improvements

**Files to apply**

- .vscode/settings.json
- .bash_firstsetup
- .bash_profile
- .bashrc
- .bashrc_include
- .bashrc_private_post
- .bashrc_private_pre
- .editorconfig
- .gitignore_global
- .zshrc

**Usage**

```sh
git clone https://github.com/fritx/fritxbash.git
cd fritxbash

# node related preparation
npm install
npm run build:vscode

# setup private stuffs & sub-modules
sh repo_setup.sh

# do some back-up like:
mv ~/.bashrc ~/.bashrc_bak
mv ~/.bash_profile ~/.bashrc_profile_bak
mv ~/.gitignore_global ~/.gitignore_global_bak

# ...and then
sh repo_apply.sh
# will link the files to your home dir `~/`

# (MacOS only)
export vsc_usr="$HOME/Library/Application Support/Code/User/settings.json"
mv $vsc_usr .vscode/user_settings.backup.json
cp .vscode/user_settings.json .vscode/user_settings.link.json
ln -s $PWD/.vscode/user_settings.link.json $vsc_usr

# from now on, you can hack anything here around `./` instead
# like editing the .bashrc, .etc
```

<img width=600 src=WechatIMG239.png>
