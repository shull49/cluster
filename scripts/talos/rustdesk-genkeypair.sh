#!/bin/bash

echo generating keypairs...

kubectl run rustdesk-genkeypair --restart=Never -ti --rm --image=rustdesk/rustdesk-server-s6:latest -- /usr/bin/rustdesk-utils genkeypair
