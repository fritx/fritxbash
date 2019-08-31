# Like:
# cp .bashrc_private_post_demo .bashrc_private_post
# cp .bashrc_private_pre_demo .bashrc_private_pre

for f in {rc_private_post,rc_private_pre,_firstsetup_post,_firstsetup_pre}; do {
  export tar=".bash${f}"
  export src="${tar}_demo"
  [ -r $src ] && [ -e $src ] && ( \
    [ -e $tar ] || cp $src $tar \
  )
}
done
unset f
