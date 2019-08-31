**Todo**

- .zshrc
- user prompts
- vps.bash_firstsetup
- vps.bashrc

**Files to apply**

- .vscode/settings.json
- .bash_firstsetup
- .bash_firstsetup_private_post
- .bash_firstsetup_private_pre
- .bash_profile
- .bashrc
- .bashrc_private_post
- .bashrc_private_pre
- .editorconfig
- .gitignore_global

**Usage**

```sh
git clone https://github.com/fritx/fritxbash.git
cd fritxbash

# setup private stuffs
sh repo_setup.sh

# do some back-up like:
mv ~/.bashrc ~/.bashrc_bak
mv ~/.bash_profile ~/.bashrc_profile_bak
mv ~/.gitignore_global ~/.gitignore_global_bak

# ...and then
sh repo_apply.sh
# will link the files to your home dir `~/`

# from now on, you can hack anything here around `./` instead
# like editing the .bashrc, .etc
```

For zsh user, make sure that you have appended the below to .zshrc:

```sh
# ~/.zshrc
# ...
# load our bashrc
. ~/.bashrc
```
