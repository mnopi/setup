#!/bin/sh

# watchman -j <<-EOT
# ["trigger", "$(dirname "$0")", {
#   "name": "setup",
#   "command": ["git", "all"]
# }]
# EOT


cat "$(watchman get-sockname | jq -r .sockname)"/log
watchman --logfile=/tmp/setup.log --log-level 2
watchman watch-del /root/setup
watchman watch-project .
watchman -- trigger . 'setup' -- git all
watchman watch-list
watchman trigger-list .
