#!/bin/bash
set -e

# SSH-Key aus Secret laden
mkdir -p ~/.ssh
echo "$GITHUB_SSH_KEY" > ~/.ssh/rsa-256
chmod 600 ~/.ssh/rsa-256
ssh-keyscan github.com >> ~/.ssh/known_hosts

# echtes Provisioning laden
git clone git@github.com:ikarus1003/lisaComfy.git
bash lisaComfy/ir.sh
