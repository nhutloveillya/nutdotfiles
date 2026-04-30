#!bin/bash
sync() {
  rsync -av --progress --include-from='./ls.txt' -r ~/. ~/dotfiles/
}
clone() {
  rsync -av --progress -r ~/dotfiles/config/. ~/.config/
}

helpp() {
  cat <<EOF
 Cach dung dotmnt:
  install.sh <command>
  command:
  -c    --clone : clone du lieu tu dotfiles vao config cua ban
  -s    --sync  : dong bo config cua ban cho dotfiles
  -gp   --gitpsh: day dotfiles len repo
  -gc   --gitcl : clone dotfiles tren repo ve
EOF
}

case "$1" in
--sync | -s)
  sync
  ;;
--clone | -c)
  clone
  ;;
* | -h | --help)
  helpp
  exit 0
  ;;
esac
