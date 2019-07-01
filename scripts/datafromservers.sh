#!/usr/bin/env bash
for i in $(cat servers.txt); do
    ssh -q "$i" "ls /movile/" > "$i.out"
done
