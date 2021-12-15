#! /bin/sh

cp default-conf ../.config
witness -c run.yaml run -- ../make
witness -c sign.yaml sign policy.json
witness -c verify.yaml verify --layout-key testpub.pem -f arch/x86/boot/bzImage -a linux-attestation.json