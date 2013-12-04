#
# This make script was created by Louis Kremer aka. @3x7R00Tripper.
#

#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "make.sh must be run as root" 2>&1
  exit 1
else
  gcc -o posix_spawn main.c
  sudo cp posix_spawn /sw/bin/
  echo "Installed successfully"
fi
