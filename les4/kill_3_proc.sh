#!/bin/bash
for i in {1..3}
do
pgrep -f 'process_wait.sh$'|xargs -n 1 pgrep -P|xargs -n 1 kill
done
echo "3 process sleepers destroyed"