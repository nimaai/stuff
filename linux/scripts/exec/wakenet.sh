#!/bin/bash

case "$1" in
  thaw|resume)
    nmcli nm sleep false
    ;;
  *)
    ;;
esac

exit $?
