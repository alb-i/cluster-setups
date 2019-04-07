#!/bin/bash

TARGET=root@$1

scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -r payloads $TARGET:'~'

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $TARGET 'chmod +x payloads/*'

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $TARGET "tmux new-session -d -s setup-session $2"
