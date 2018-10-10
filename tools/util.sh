function config() {
  cat .config | grep $1 | awk '{ print $2 }'
}

function authtoken() {
  cat .auth | tr -d '\n'
}
