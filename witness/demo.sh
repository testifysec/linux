#! /bin/sh

cp default-conf ../.config
witness run -- ../make
witness sign policy.json
witness verify arch/x86/boot/bzImage