#!/bin/sh
set -e

[ -d /root/rootfiles ] && exit 1
id xlzs0 >/dev/null 2>&1 || { echo "you don't really wanna do this"; exit 1; }

git --git-dir=/root/rootfiles --work-tree=/ init
git --git-dir=/root/rootfiles config core.hooksPath /.githooks
git --git-dir=/root/rootfiles remote add origin https://github.com/xlzs0/openbsd-rootfiles.git
# you don't really wanna do this (x2) without an ssh key
# git --git-dir=/root/rootfiles config core.sshCommand 'ssh -i /home/xlzs0/.ssh/id_ed25519 -o IdentitiesOnly=yes -o UserKnownHostsFile=/home/xlzs0/.ssh/known_hosts'
# git --git-dir=/root/rootfiles remote add origin git@github.com:xlzs0/openbsd-rootfiles.git
git --git-dir=/root/rootfiles fetch origin
git --git-dir=/root/rootfiles --work-tree=/ checkout -f master
