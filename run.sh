#!/bin/bash

arm-none-eabi-gcc -std=c89 -O2 -g   -mcpu=arm926ej-s -marm   -specs=rdimon.specs -Wl,--gc-sections   unsigned-overflow.c -o unsigned-overflow.elf   -lc -lrdimon

qemu-system-arm -M versatilepb -nographic   -semihosting   -kernel unsigned-overflow.elf
