#!/bin/sh

echo "src 0 /dev" > hex0.src
cp external/bootstrap-seeds/POSIX/x86/hex0_x86.hex0 .

external/builder-hex0/hex0-to-src.sh ./hex0_x86.hex0 >> hex0.src

ENABLE_KVM= external/builder-hex0/build-stages.sh \
  external/bootstrap-seeds/NATIVE/x86/builder-hex0-x86-stage1.img \
  external/builder-hex0/builder-hex0-x86-stage2.hex0 \
  hex0.src \
  hex0-seed

mv hex0-seed /repo
