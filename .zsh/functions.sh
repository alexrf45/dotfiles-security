man() {
  env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[01;33;03;40m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

extract() {
  if [ -f $1 ]; then
    case $1 in
    *.tar.bz2) tar xjf $1 ;;
    *.tar.gz) tar xzf $1 ;;
    *.bz2) bunzip2 $1 ;;
    *.rar) rar x $1 ;;
    *.gz) gunzip $1 ;;
    *.tar) tar xf $1 ;;
    *.tbz2) tar xjf $1 ;;
    *.tgz) tar xzf $1 ;;
    *.zip) unzip $1 ;;
    *.Z) uncompress $1 ;;
    *.7z) uncompress $1 ;;
    *.apk) uncompress $1 ;;
    *.bz2) uncompress $1 ;;
    *.tar.gz) uncompress $1 ;;
    *.tar.lz) uncompress $1 ;;
    *.war) uncompress $1 ;;
    *.xz) uncompress $1 ;;
    *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

up() {
  for i in $(seq 1 $1); do
    cd ../
  done
}

virtual_env() {
  mkdir $1 &&
    cd $1 &&
    virtualenv .venv &&
    source .venv/bin/activate
}




timestamp() {
  date +%Y%m%d-%T
}

git-new() {
  [ -d "$1" ] || mkdir "$1" &&
    cd "$1" &&
    git init &&
    touch .gitignore &&
    git add .gitignore &&
    git commit -m "Add .gitignore."
}

web-server() {
  miniserve \
    -t "fr3d" \
    -v \
    -F \
    -H \
    -c monokai \
    -p 8001 \
    --header "Cache-Control:no-cache" \
    --auth-file ~/.config/auth.txt \
    --tls-cert $HOME/.local/ctf-cert.pem \
    --tls-key $HOME/.local/ctf-key.pem \
    -u
}

cert-gen() {
  mkcert -key-file $HOME/.local/$1-key.pem -cert-file $HOME/.local/$1-cert.pem localhost
}

dockershellhere() {
  dirname=${PWD##*/}
  docker run --rm -it --net=host --entrypoint=/bin/bash -v $(pwd):/${dirname} -w /${dirname} debian:latest
}

age-key() {
   age-keygen -o ~/.local/$1.txt
}

encrypt-file () {
	cat ./$1 | age -R ~/.local/$2.txt -o ./$1.enc
}
