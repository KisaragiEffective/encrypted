# encrypted
Pretty Good Privacy.
Replacement for those old *shared-secrets*.

## how to read
**NOTE: Decrypted files must not be redistributed unless you have explicit written permission.**
1. go to file
2. download file (assuming saved as `ENCRYPTED.asc`)
3. `gpg -d ENCRYPTED.asc -o DECRYPTED`
4. see `DECRYPTED`

## how to join
1. Generate GPG key
2. Submit PR with public key (basedir must be `$REPO_ROOT/keys/$GITHUB_USER_NAME/`. You can choose suitable filename.
NOTE: 
* `keys/@external` is reserved. It contains keys that belong to non-GitHub-user.
* There may be your key already, due to they were imported manually to this repository by me
