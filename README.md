# encrypted
Pretty Good Privacy.
Replacement for those old *shared-secrets*.

## how to read
**NOTE: Redistribution is disallowed. You must not redistribute it unless you have explicit written permission.**
1. go to file
2. download file (assuming saved as `ENCRYPTED.asc`)
3. `gpg -d ENCRYPTED.asc -o DECRYPTED`
4. see `DECRYPTED`

## how to join
1. generate gpg key
2. submit PR with public key (basedir must be `$REPO_ROOT/$GITHUB_USER_NAME/`. You can choose suitable filename.
