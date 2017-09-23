function alias-echo {
  FN="$1"
  CMD="${@:2}"
  eval "function $FN() { if [ -z \$NO_ALIAS_ECHO ]; then; echo \"$CMD \$@\"; fi; $CMD \$@ }"
}

