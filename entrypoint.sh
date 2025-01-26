#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(dirname "$0")"
cd "$SCRIPT_DIR"

if [ ! -f /ssh/key.pub ]; then
    echo 'ERROR: Refusing to start without ssh key.pub'
    exit 1
fi

chmod 700 /home/borgbackup/.ssh
echo 'command="borg serve --append-only --restrict-to-repository /backup",restrict' "$(tr -d '\n' < /ssh/key.pub)" \
    > /home/borgbackup/.ssh/authorized_keys
chmod 600 /home/borgbackup/.ssh/authorized_keys
chown -R borgbackup:borgbackup /home/borgbackup/.ssh

chmod 700 /backup
chown borgbackup:borgbackup /backup

mkdir /run/sshd
chmod 700 /run/sshd

/usr/sbin/sshd -D -e
