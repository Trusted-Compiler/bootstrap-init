#!/bin/sh

## hex0.src

echo "src 0 /dev" > hex0.src
cp external/bootstrap-seeds/POSIX/x86/hex0_x86.hex0 .
external/builder-hex0/hex0-to-src.sh ./hex0_x86.hex0 >> hex0.src

## kaem.src

echo "src 0 /dev" > kaem.src
cp external/bootstrap-seeds/POSIX/x86/kaem-minimal.hex0 .
external/builder-hex0/hex0-to-src.sh ./kaem-minimal.hex0 >> kaem.src

ENABLE_KVM= external/builder-hex0/build-stages.sh \
  external/bootstrap-seeds/NATIVE/x86/builder-hex0-x86-stage1.img \
  external/builder-hex0/builder-hex0-x86-stage2.hex0 \
  hex0.src \
  hex0-seed

ENABLE_KVM= external/builder-hex0/build-stages.sh \
  external/bootstrap-seeds/NATIVE/x86/builder-hex0-x86-stage1.img \
  external/builder-hex0/builder-hex0-x86-stage2.hex0 \
  kaem.src \
  kaem-optional-seed

mv hex0-seed /repo
mv kaem-optional-seed /repo
