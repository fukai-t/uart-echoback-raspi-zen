#!/bin/bash
set -e

zen build-obj -fPIC -target aarch64-freestanding-eabi -mcpu cortex-a53 src/main.zen 
zen build-obj -fPIC -target aarch64-freestanding-eabi -mcpu cortex-a53 src/boot_asm.zen
zen build-exe --linker-script src/linker.ld -fPIC -target aarch64-freestanding-eabi -mcpu cortex-a53 --object boot_asm.o --object main.o  --name zen-test-uart

