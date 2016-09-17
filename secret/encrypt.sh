#!  /usr/bin/env bash
### ############################################################################
##! @file       encrypt.sh
##! @brief      Symmetrically encrypt secret information
##! @author     0xD62EE11516877AA8
##! @date       2016-09-17
##! @copyright  GPLv3+

## Bundle secret data
tar \
    --verbose \
    --create \
    --gzip \
    --file secret.tgz \
    sec.gpg sub.gpg rev.asc

## Symmetrically encrypt private data, with forced-tinfoil-hat options
## Use symmetric encryption: Private keys may not be available in the future.
gpg \
    --output secret.tgz.gpg \
    --local-user 0xD62EE11516877AA8 \
    --sign \
    --symmetric \
    --cipher-algo AES256 \
    --s2k-cipher-algo AES256 \
    --s2k-digest-algo SHA512 \
    --s2k-mode 3 \
    --s2k-count 65011712 \
    secret.tgz

## Obliterate the clear-ish secret data, with forced-tinfoil-hat options
shred \
      --verbose \
      --force \
      --zero \
      --remove \
      --iterations=5 \
      secret.tgz sec.gpg sub.gpg rev.asc

### end encrypt.sh
### ############################################################################
