#! /bin/sh

# Generate Captain Specific SSH Keys and save them as deploykey in working directory
ssh-keygen -m PEM -t rsa -b 4096 -C "caprover" -f ./deploykey -q -N ""
