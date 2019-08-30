# Like:
# cp .bashrc_private_demo .bashrc_private

for f in {.bashrc,.bash_firstsetup}; do {
  export tar="${f}_private"
  export src="${tar}_demo"
  [ -r $src ] && [ -e $src ] && ( \
    [ -e $tar ] || cp $src $tar \
  )
}
done
unset f
