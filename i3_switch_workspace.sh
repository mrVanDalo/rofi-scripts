#!/usr/bin/env bash
set -e
set -o pipefail
i3-msg -t get_workspaces | \
jq --raw-output '.[] | .name' | \
rofi -dmenu -p 'Select Workspace' | \
while read line
do
  i3-msg workspace "$line"
done
