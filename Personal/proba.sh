#!/bin/sh
set -e

if ls /sys/firmware/efi/efivars &> /dev/null; then
    echo "UEFI"
else
    echo "BOOT"
fi
