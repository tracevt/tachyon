#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

curl -fsSL https://bun.sh/install | bash

apt-get autoremove -yq
apt-get clean -yqq
rm -rf /var/lib/apt/lists/*

source /root/.bashrc

bun --version
