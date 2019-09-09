# Like:
# cp .bashrc_private_post_demo .bashrc_private_post
# cp .bashrc_private_pre_demo .bashrc_private_pre

for f in {post,pre}; do {
  export tar=".bashrc_private_${f}"
  export src="${tar}_demo"
  [ -r $src ] && [ -e $src ] && ( \
    [ -e $tar ] || cp $src $tar \
  )
}
done
unset f

git submodule init
git submodule update
