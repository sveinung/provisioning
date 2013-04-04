# Provisioning helper functions

function _include {
  pushd $1
  source init.sh
  popd
}

function _package {
  local CMD="sudo apt-get --yes --quiet install $1"
  if [[ -z $2 ]]; then
    $CMD
  else
    $CMD=$2
  fi
}
