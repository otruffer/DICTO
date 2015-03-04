#!/bin/bash  

## VM
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PWD=`pwd`
VM_BINARY_NAME="Pharo"
VM_BINARY_NAME_LINUX="pharo"
TMP_OS=`uname | tr "[:upper:]" "[:lower:]"`

if [[ "{$TMP_OS}" = *darwin* ]]; then
    CMD="pharo-vm/Pharo.app/Contents/MacOS/Pharo --headless ../tools/moose/Moose.image"
elif [[ "{$TMP_OS}" = *linux* ]]; then
    CMD="pharo-vm/pharo --nodisplay ../tools/moose/Moose.image"
else
    echo "Unsupported OS";
exit 1;
fi

$CMD $PWD"/buildSTMooseModelInstall.st"