#!/usr/bin/env bash

n=50

i=1
while true; do
    app_ids=$(cat app-ids | gtail -n +$i | head -n50)
    if [[ -z $app_ids ]]; then
        break;
    fi
    echo "<a href=\"https://app.intercom.com/a/apps/tx2p130c/companies/segments/all:$(printf '%s\n' $app_ids | ./x.bash | ./y.bash)\">$i - $((i + n))</a><br />"
    ((i += n))
done
