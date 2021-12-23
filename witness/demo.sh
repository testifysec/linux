#! /bin/sh

cp default-conf ../.config
witness run -- make -j8
witness sign policy.json
witness verify arch/x86/boot/bzImage
